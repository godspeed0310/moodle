import 'package:flutter/material.dart';
import 'package:moodle/frontend/views/attendance.dart';
import 'package:moodle/frontend/views/calendar.dart';
import 'package:moodle/frontend/views/fees.dart';
import 'package:moodle/frontend/views/homework.dart';
import 'package:moodle/frontend/views/multimedia.dart';
import 'package:moodle/frontend/widgets/category_tile.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:sizer/sizer.dart';

class SearchTab extends StatelessWidget {
  final Function() onBack;

  const SearchTab({
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
          title: 'Search',
          centerTitle: true,
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            GridView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 3.33.w, vertical: 5.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3.33.w,
                mainAxisSpacing: 4.37.h,
                childAspectRatio: 1.2,
              ),
              children: const [
                CategoryTile(
                  icon: 'assets/icons/attendance.svg',
                  label: 'Attendance',
                  child: AttendanceView(),
                ),
                CategoryTile(
                  icon: 'assets/icons/calendar.svg',
                  label: 'Calendar',
                  child: CalendarView(),
                ),
                CategoryTile(
                  icon: 'assets/icons/fees.svg',
                  label: 'Fees',
                  child: FeesView(),
                ),
                CategoryTile(
                  icon: 'assets/icons/homework.svg',
                  label: 'Homework',
                  child: HomeworkView(),
                ),
                CategoryTile(
                  icon: 'assets/icons/multimedia.svg',
                  label: 'Multimedia',
                  child: MultimediaView(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
