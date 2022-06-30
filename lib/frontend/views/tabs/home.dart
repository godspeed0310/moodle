import 'package:flutter/material.dart';
import 'package:moodle/backend/data/events_data.dart';
import 'package:moodle/frontend/widgets/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const HomeHeader(),
        SliverToBoxAdapter(
          child: EventCard(
            event: events[0],
          ),
        ),
        const LiveUpdates(),
      ],
    );
  }
}
