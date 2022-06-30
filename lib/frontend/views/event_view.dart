import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/backend/models/event.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:sizer/sizer.dart';

class EventView extends StatelessWidget {
  final Event event;

  const EventView({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: const CustomAppBar(
          centerTitle: true,
          title: 'Event Details',
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.sp),
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 6.56.h,
            ),
            Text(
              event.name,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                fontSize: 13.5.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              event.description,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,
                fontSize: 10.5.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
