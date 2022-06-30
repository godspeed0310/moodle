import 'package:flutter/material.dart';
import 'package:moodle/backend/data/events_data.dart';
import 'package:moodle/backend/models/event.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:moodle/frontend/widgets/event_card.dart';
import 'package:sizer/sizer.dart';

class NotificationsTab extends StatelessWidget {
  final Function() onBack;

  const NotificationsTab({
    Key? key,
    required this.onBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: onBack,
          ),
          title: 'Notice Board',
          centerTitle: true,
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 5.h),
          itemBuilder: (context, index) {
            final Event event = events[index];

            return EventCard(
              event: event,
              showShadow: false,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 2.h,
            );
          },
          itemCount: events.length,
        ),
      ),
    );
  }
}
