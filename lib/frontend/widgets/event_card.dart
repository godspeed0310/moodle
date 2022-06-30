import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/frontend/shared/shared_constants.dart';
import 'package:sizer/sizer.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 26.h,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            width: 86.w,
            height: 24.21.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.w),
              gradient: AppColors.primaryGradient,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -1.5.w),
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
                BoxShadow(
                  offset: Offset(0, -3.w),
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 13.33.w,
                  width: 13.33.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1.5.w,
                        color: Colors.white.withOpacity(0.35),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Holiday',
                      style: GoogleFonts.quicksand(
                        color: Theme.of(context).primaryColor,
                        fontSize: 7.5.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Diwali Holiday',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.6.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing.',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 9.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        'Date: 26 Oct - 30 Oct',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 9.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
