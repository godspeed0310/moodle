import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/frontend/views/fees.dart';
import 'package:moodle/frontend/views/homework.dart';
import 'package:moodle/frontend/views/multimedia.dart';
import 'package:moodle/frontend/widgets/category_tile.dart';
import 'package:sizer/sizer.dart';

class LiveUpdates extends StatelessWidget {
  const LiveUpdates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Live Updates',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w300,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 1.7.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoryTile(
                  icon: 'assets/icons/homework.svg',
                  label: 'Homework',
                  child: HomeworkView(),
                ),
                SizedBox(
                  width: 3.6.w,
                ),
                Expanded(
                  child: CategoryTile(
                    icon: 'assets/icons/fees.svg',
                    label: 'Fees',
                    size: Size(0, 34.72.w),
                    child: const FeesView(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.96.h,
            ),
            CategoryTile(
              icon: 'assets/icons/multimedia.svg',
              label: 'Multimedia',
              size: Size(86.11.w, 34.72.w),
              child: const MultimediaView(),
            ),
          ],
        ),
      ),
    );
  }
}
