// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientInfo _$$_ClientInfoFromJson(Map<String, dynamic> json) =>
    _$_ClientInfo(
      deviceId: json['device_id'] as String,
      locale: json['locale'] as String,
      type: json['type'] as String,
      system: json['system'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$$_ClientInfoToJson(_$_ClientInfo instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'locale': instance.locale,
      'type': instance.type,
      'system': instance.system,
      'version': instance.version,
    };

_$_AppUpdateInfo _$$_AppUpdateInfoFromJson(Map<String, dynamic> json) =>
    _$_AppUpdateInfo(
      version: json['version'] as String,
      desc: json['desc'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_AppUpdateInfoToJson(_$_AppUpdateInfo instance) =>
    <String, dynamic>{
      'version': instance.version,
      'desc': instance.desc,
      'url': instance.url,
    };
