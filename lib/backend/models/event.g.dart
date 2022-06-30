// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? 'No Description Provided',
      type: $enumDecodeNullable(_$EventTypeEnumMap, json['type']) ??
          EventType.event,
      isMultiDay: json['isMultiDay'] as bool? ?? false,
      startDate: json['startDate'] as String? ?? '',
      endDate: json['endDate'] as String? ?? '',
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': _$EventTypeEnumMap[instance.type],
      'isMultiDay': instance.isMultiDay,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

const _$EventTypeEnumMap = {
  EventType.holiday: 'holiday',
  EventType.event: 'event',
};
