// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Homework _$HomeworkFromJson(Map<String, dynamic> json) => Homework(
      title: json['title'] as String? ?? '',
      isDone: json['isDone'] as bool? ?? false,
      subject: $enumDecodeNullable(_$SubjectEnumMap, json['subject']) ??
          Subject.english,
      date: json['date'] as String? ?? 'Today',
    );

Map<String, dynamic> _$HomeworkToJson(Homework instance) => <String, dynamic>{
      'title': instance.title,
      'isDone': instance.isDone,
      'subject': _$SubjectEnumMap[instance.subject],
      'date': instance.date,
    };

const _$SubjectEnumMap = {
  Subject.english: 'english',
  Subject.maths: 'maths',
  Subject.science: 'science',
  Subject.history: 'history',
  Subject.geography: 'geography',
  Subject.computerScience: 'computerScience',
  Subject.biology: 'biology',
  Subject.chemistry: 'chemistry',
  Subject.physics: 'physics',
  Subject.music: 'music',
  Subject.art: 'art',
  Subject.drama: 'drama',
  Subject.sport: 'sport',
  Subject.other: 'other',
};
