import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/frontend/widgets/bottom_navbar.dart';
import 'package:moodle/frontend/widgets/category_tile.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:moodle/frontend/widgets/event_card.dart';
import 'package:moodle/frontend/widgets/home_header.dart';
import 'package:moodle/frontend/widgets/live_updates.dart';
import 'package:sizer/sizer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultSystemOverlay(
      scaffold: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            HomeHeader(),
            EventCard(),
            LiveUpdates(),
          ],
        ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
