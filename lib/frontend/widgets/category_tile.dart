import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:sizer/sizer.dart';

class CategoryTile extends StatelessWidget {
  final String icon;
  final String label;
  final Size? size;
  final Widget? child;

  const CategoryTile({
    Key? key,
    required this.icon,
    required this.label,
    this.size,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return OpenContainer(
      openColor: Colors.transparent,
      closedColor: Colors.transparent,
      openElevation: 0,
      closedElevation: 0,
      middleColor: Colors.transparent,
      closedBuilder: (context, _) {
        return InkWell(
          borderRadius: BorderRadius.circular(8.3.w),
          child: Ink(
            width: size?.width ?? 34.72.w,
            height: size?.height ?? 34.72.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.3.w),
              color: adaptiveColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 8.88.w,
                  backgroundColor: const Color(0xFF045DE9).withOpacity(0.087),
                  child: SvgPicture.asset(
                    icon,
                    height: 7.2.w,
                    width: 7.2.w,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  label,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    fontSize: 10.5.sp,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      openBuilder: (context, _) =>
          child ??
          const DefaultSystemOverlay(
            scaffold: Scaffold(),
          ),
    );
  }
}
