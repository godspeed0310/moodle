import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:sizer/sizer.dart';

class AboutSchool extends StatelessWidget {
  const AboutSchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: const CustomAppBar(
          title: 'About School',
          centerTitle: true,
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel ligula diam. Nunc at vulputate mauris. Duis eu sem faucibus, feugiat tellus sed, malesuada tellus. Etiam mi enim, tristique eget blandit eget, tempus vel nulla. Proin consequat volutpat lorem quis ultrices. Quisque volutpat, ex non vestibulum tincidunt, tortor odio vulputate risus, a finibus urna purus in diam. Nulla quis orci sed dui tincidunt pretium sed porta urna. Morbi a porttitor magna.\n\nAliquam commodo pharetra ante, eu commodo arcu lacinia ac. Aliquam erat volutpat. Proin efficitur nisi lacus, accumsan egestas magna aliquet non. Nam imperdiet nulla ex, ut ultrices leo gravida sit amet. Nunc egestas quam quis velit finibus sagittis. Sed sagittis enim in erat porta porttitor. Mauris ut bibendum leo, vel sollicitudin massa. Morbi ut ornare mi. Sed sit amet sagittis purus. Mauris et ex risus. Praesent vitae arcu diam. In lobortis ipsum viverra dolor varius, ac mattis diam vestibulum. Curabitur nibh dolor, lobortis sed volutpat malesuada, blandit at turpis.\n\nPraesent tempor, est in lacinia porta, quam purus porta enim, tempus dignissim arcu nulla vel ante. Phasellus eu nulla elit. Quisque leo urna, faucibus eu dapibus non, sodales at ligula. Aliquam cursus diam nisi. Phasellus tincidunt blandit lorem nec commodo. Donec finibus mi velit, a volutpat nibh commodo et. Quisque eget mauris nibh. Praesent in aliquam urna. Sed pharetra, ligula a fermentum elementum, turpis est imperdiet magna, sed porttitor ex mi a quam. Phasellus dictum pharetra massa ac auctor.',
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
