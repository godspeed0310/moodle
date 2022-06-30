import 'package:flutter/material.dart';
import 'package:moodle/backend/data/fees_data.dart';
import 'package:moodle/backend/models/fees.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:moodle/frontend/widgets/fees_card.dart';
import 'package:sizer/sizer.dart';

class FeesView extends StatelessWidget {
  const FeesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

              return FeesCard(fees: fees);
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
