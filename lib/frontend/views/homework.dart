import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/backend/data/homework_data.dart';
import 'package:moodle/backend/models/homework.dart';
import 'package:moodle/backend/viewmodels/homework_model.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:moodle/frontend/widgets/homework_checkbox.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

class HomeworkView extends StatelessWidget {
  const HomeworkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeworkModel>.reactive(
      viewModelBuilder: () => HomeworkModel(),
      builder: (context, model, child) {
        return DefaultSystemOverlay(
          scaffold: Scaffold(
            appBar: const CustomAppBar(
              title: 'Homework',
              centerTitle: true,
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.25.sp,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final Homework homework = homeworks[index];

                        return HomeworkCheckbox(
                          homework: homework,
                          onChanged: (value) => model.updateCompleted(homework),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 1.h,
                        );
                      },
                      itemCount: homeworks.length,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Yesterday',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.25.sp,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final Homework homework = pasthomeworks[index];

                        return HomeworkCheckbox(
                          homework: homework,
                          onChanged: (value) => model.updateCompleted(homework),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 1.h,
                        );
                      },
                      itemCount: homeworks.length,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
