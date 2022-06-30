// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      name: json['name'] as String? ?? '',
      summary: json['summary'] as String? ?? 'No Description Provided',
      description: json['description'] as String? ??
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque pulvinar diam vitae rhoncus. Maecenas et dui lacus. Nullam a eros accumsan, mollis ante aliquet, gravida leo. Proin non pretium est, sed gravida nibh. Curabitur vehicula tincidunt molestie. Cras congue tincidunt nunc, consequat posuere lacus vehicula ac. Phasellus viverra vel erat id iaculis. Etiam mi erat, porta a odio sed, interdum lobortis elit. Proin non hendrerit dolor. Donec massa arcu, lobortis in rhoncus at, efficitur eu turpis. Vestibulum porttitor quam ut massa venenatis, eu viverra leo efficitur. Donec ut odio aliquam, faucibus nulla quis, finibus arcu. Vivamus non nisl felis. Vestibulum volutpat enim et facilisis consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut mi orci. Morbi sodales lectus metus, eget volutpat mi cursus maximus. Aliquam ullamcorper nunc odio, vitae sodales nisl varius vel. Donec pretium consequat felis. Nulla facilisi.',
      type: $enumDecodeNullable(_$EventTypeEnumMap, json['type']) ??
          EventType.event,
      isMultiDay: json['isMultiDay'] as bool? ?? false,
      startDate: json['startDate'] as String? ?? '',
      endDate: json['endDate'] as String? ?? '',
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'name': instance.name,
      'summary': instance.summary,
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
