part of '../provider.dart';

@freezed
class AppEvt with _$AppEvt {
  // app启动事件
  // const factory AppEvt.start() = _AppEvtInit;
  const factory AppEvt.checkUpdate() = _AppEvtCheckUpdate;
  // 需要版本更新
  const factory AppEvt.needUpdate(AppUpdateInfo info) = _AppEvtNeedUpdate;
  // 确认下载安装更新
  const factory AppEvt.ensureUpdate(AppUpdateInfo info) = _AppEvtEnsureUpdate;
}

class AppProvider extends SidecarProvider<AppEvt, String> {
  AppProvider({
    super.state = '',
  }) {
    // 创建Provider时检查更新
    add(const AppEvt.checkUpdate());
  }
  @override
  FutureOr<void> onEvent(AppEvt evt) => evt.when(
        // start: start,
        checkUpdate: checkUpdate,
        needUpdate: needUpdate,
        ensureUpdate: ensureUpdate,
      );

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
}
