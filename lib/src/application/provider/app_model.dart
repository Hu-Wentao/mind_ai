part of '../provider.dart';

@freezed
class AppEvt with _$AppEvt {
  /// 版本检查
  // const factory AppEvt.start() = _AppEvtInit;
  const factory AppEvt.checkUpdate() = _AppEvtCheckUpdate;

  // 需要版本更新
  const factory AppEvt.needUpdate(AppUpdateInfo info) = _AppEvtNeedUpdate;

  // 确认下载安装更新
  const factory AppEvt.ensureUpdate(AppUpdateInfo info) = _AppEvtEnsureUpdate;

  /// 用户登陆
  // 尝试自动匿名登陆
  const factory AppEvt.login() = _AppEvtLogin;

  const factory AppEvt.logged(String uid) = _AppEvtLogged;

  const factory AppEvt.loginError(String msg) = _AppEvtLoginError;

  const factory AppEvt.logout() = _AppEvtLogout;
}

/// [AppModel] 是全局唯一的，其ID没有意义，仅代表某个AppModel
class AppModel extends SidecarModel<AppEvt, String> {
  AcctModel? chosenAcct;

  AppModel({super.id = ''}) {
    // 创建Provider时检查更新
    add(const AppEvt.checkUpdate());
  }

  @override
  FutureOr<void> onEvent(AppEvt evt) => evt.when(
        checkUpdate: checkUpdate,
        needUpdate: needUpdate,
        ensureUpdate: ensureUpdate,
        //
        login: login,
        logout: logout,
        loginError: loginError,
        logged: logged,
      );
}

extension AppAcctX on AppModel {
  login() async {
    // todo 先尝试通过本地token登陆
    // 匿名登陆
    await appService.login().then(
      (deviceId) {
        add(AppEvt.logged(deviceId));
      },
      onError: (e, s) {
        add(AppEvt.loginError(e.toString()));
      },
    );
  }

  logged(String uid) {
    chosenAcct = AcctModel(id: uid);
    setState('用户登陆成功[$uid]');
  }

  logout() {
    //
    setState('用户登出');
  }

  loginError(String error) {
    //
  }
}

extension AppVersionX on AppModel {
  // 检查更新
  checkUpdate() async {
    final info = await appService.checkVersion();
    if (info != null) {
      add(AppEvt.needUpdate(info));
    }
  }

  Object? needUpdate(AppUpdateInfo info) {
    return null;

    // todo wifi 自动后台下载
    // todo if wifi,
    // add(AppEvt.ensureUpdate(info.url));
  }

  Future<Object?> ensureUpdate(AppUpdateInfo info) async {
    // todo 当前仅 安卓/ios，mac win见 https://pub.flutter-io.cn/packages/auto_updater
    // 下载更新 todo 其他特性见 https://pub.flutter-io.cn/packages/flutter_app_update
    final model = UpdateModel(
      info.url!,
      "${info.version}.apk",
      "ic_launcher",
      '${info.desc}',
      // showNewerToast: false,
      // apkVersionCode: 2,
      apkVersionName: info.version,
      // apkSize: "20.4MB",
      // todo
      // iOSUrl: 'https://itunes.apple.com/cn/app/抖音/id1142110895',
    );
    await AzhonAppUpdate.update(model);
    return null;
  }

  AppService get appService => sl<AppService>();
}
