import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'setting.g.dart';

enum SettingIcon {
  person,
  info,
  conversation,
}

extension IconBuilder on SettingIcon {
  IconData get icon {
    switch (this) {
      case SettingIcon.person:
        return EvaIcons.personOutline;
      case SettingIcon.info:
        return EvaIcons.infoOutline;
      case SettingIcon.conversation:
        return EvaIcons.messageCircleOutline;
    }
  }
}

@JsonSerializable()
class Setting {
  final SettingIcon icon;
  final String label;

  Setting({
    this.icon = SettingIcon.info,
    this.label = '',
  });

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);

  Map<String, dynamic> toJson() => _$SettingToJson(this);
}
