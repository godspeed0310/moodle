// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Setting _$SettingFromJson(Map<String, dynamic> json) => Setting(
      icon: $enumDecodeNullable(_$SettingIconEnumMap, json['icon']) ??
          SettingIcon.info,
      label: json['label'] as String? ?? '',
    );

Map<String, dynamic> _$SettingToJson(Setting instance) => <String, dynamic>{
      'icon': _$SettingIconEnumMap[instance.icon],
      'label': instance.label,
    };

const _$SettingIconEnumMap = {
  SettingIcon.person: 'person',
  SettingIcon.info: 'info',
  SettingIcon.conversation: 'conversation',
};
