import 'package:flutter/material.dart';
import 'package:moodle/frontend/widgets/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        HomeHeader(),
        EventCard(),
        LiveUpdates(),
      ],
    );
  }
}
