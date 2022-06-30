import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/backend/data/fees_data.dart';
import 'package:moodle/backend/models/fees.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:sizer/sizer.dart';

class FeesView extends StatelessWidget {
  const FeesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: const CustomAppBar(
          title: 'Fees',
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            itemBuilder: (context, index) {
              Fees fees = feesData[index];

              return Container(
                padding: EdgeInsets.only(left: 2.w),
                height: 7.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1.w),
                      color: adaptiveColor.withOpacity(0.1),
                      blurRadius: 4.w,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fees.label,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 9.sp,
                          ),
                        ),
                        Text(
                          '${fees.startDate} - ${fees.endDate}',
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 7.5.sp,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '₹ ${fees.amount}',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.5.sp,
                      ),
                    ),
                    SizedBox(
                      width: 8.3.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      height: 7.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(2.w),
                          bottomRight: Radius.circular(2.w),
                        ),
                        color: fees.status.color.withOpacity(0.5),
                      ),
                      child: Center(
                        child: Text(
                          fees.status.label,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.5.sp,
                            color: fees.status.color,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 3.h,
              );
            },
            itemCount: feesData.length,
          ),
        ),
      ),
    );
  }
}
