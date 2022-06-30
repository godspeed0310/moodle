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
  final String summary;
  final String description;
  final EventType type;
  final bool isMultiDay;
  final String startDate;
  final String endDate;

  Event({
    this.name = '',
    this.summary = 'No Description Provided',
    this.description =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque pulvinar diam vitae rhoncus. Maecenas et dui lacus. Nullam a eros accumsan, mollis ante aliquet, gravida leo. Proin non pretium est, sed gravida nibh. Curabitur vehicula tincidunt molestie. Cras congue tincidunt nunc, consequat posuere lacus vehicula ac. Phasellus viverra vel erat id iaculis. Etiam mi erat, porta a odio sed, interdum lobortis elit. Proin non hendrerit dolor. Donec massa arcu, lobortis in rhoncus at, efficitur eu turpis. Vestibulum porttitor quam ut massa venenatis, eu viverra leo efficitur. Donec ut odio aliquam, faucibus nulla quis, finibus arcu. Vivamus non nisl felis. Vestibulum volutpat enim et facilisis consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut mi orci. Morbi sodales lectus metus, eget volutpat mi cursus maximus. Aliquam ullamcorper nunc odio, vitae sodales nisl varius vel. Donec pretium consequat felis. Nulla facilisi.',
    this.type = EventType.event,
    this.isMultiDay = false,
    this.startDate = '',
    this.endDate = '',
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
