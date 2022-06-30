import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

enum EventType {
  holiday,
  event,
}

extension EventTypeExtension on EventType {
  String get label {
    switch (this) {
      case EventType.holiday:
        return 'Holiday';
      case EventType.event:
        return 'Event';
    }
  }
}

@JsonSerializable()
class Event {
  final String name;
  final String description;
  final EventType type;
  final bool isMultiDay;
  final String startDate;
  final String endDate;

  Event({
    this.name = '',
    this.description = 'No Description Provided',
    this.type = EventType.event,
    this.isMultiDay = false,
    this.startDate = '',
    this.endDate = '',
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
