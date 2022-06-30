import 'package:json_annotation/json_annotation.dart';

part 'homework.g.dart';

enum Subject {
  english,
  maths,
  science,
  history,
  geography,
  computerScience,
  biology,
  chemistry,
  physics,
  music,
  art,
  drama,
  sport,
  other,
}

extension SubjectExtension on Subject {
  String get name {
    switch (this) {
      case Subject.english:
        return 'English';
      case Subject.maths:
        return 'Maths';
      case Subject.science:
        return 'Science';
      case Subject.history:
        return 'History';
      case Subject.geography:
        return 'Geography';
      case Subject.computerScience:
        return 'Computer Science';
      case Subject.biology:
        return 'Biology';
      case Subject.chemistry:
        return 'Chemistry';
      case Subject.physics:
        return 'Physics';
      case Subject.music:
        return 'Music';
      case Subject.art:
        return 'Art';
      case Subject.drama:
        return 'Drama';
      case Subject.sport:
        return 'Sport';
      case Subject.other:
        return 'Other';
    }
  }
}

@JsonSerializable()
class Homework {
  final String title;
  bool isDone;
  final Subject subject;
  final String date;

  Homework({
    this.title = '',
    this.isDone = false,
    this.subject = Subject.english,
    this.date = 'Today',
  });

  factory Homework.fromJson(Map<String, dynamic> json) =>
      _$HomeworkFromJson(json);

  Map<String, dynamic> toJson() => _$HomeworkToJson(this);
}
