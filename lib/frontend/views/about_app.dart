import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:sizer/sizer.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: const CustomAppBar(
          title: 'About Moodle',
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
          children: [
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis tempus libero, eget fermentum sapien mattis id. Nam fringilla augue eget tincidunt condimentum. Suspendisse lacinia facilisis magna eget dictum. Sed in tincidunt quam, vitae varius ligula. Maecenas rutrum velit nisl, ac congue tellus hendrerit non. Morbi vel pharetra ex. Donec rutrum leo quis metus vulputate volutpat. Donec faucibus suscipit mauris quis posuere.',
              style: GoogleFonts.quicksand(
                fontSize: 10.5.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.59.h,
            ),
            Text(
              'TEAM',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,
                fontSize: 10.5.sp,
                color: adaptiveColor.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Text(
              'Product Manager  :  Mr. Dharam Soni',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,
                fontSize: 10.5.sp,
              ),
            ),
            SizedBox(
              height: 2.18.h,
            ),
            Text(
              'Product Designer  :  Mr. Jitendra Gupta',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,
                fontSize: 10.5.sp,
              ),
            ),
            SizedBox(
              height: 2.18.h,
            ),
            Text(
              'Developer(s)  :  Mr. Dharam Soni',
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
