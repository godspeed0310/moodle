import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/backend/data/settings_data.dart';
import 'package:moodle/backend/models/setting.dart';
import 'package:moodle/backend/viewmodels/account_model.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:moodle/frontend/widgets/profile_header.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

class AccountTab extends StatelessWidget {
  final Function() onBack;

  const AccountTab({
    Key? key,
    required this.onBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return ViewModelBuilder<AccountModel>.nonReactive(
      viewModelBuilder: () => AccountModel(),
      builder: (context, model, child) {
        return DefaultSystemOverlay(
          scaffold: Scaffold(
            appBar: CustomAppBar(
              title: 'My Account',
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: onBack,
              ),
            ),
            body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const ProfileHeader(),
                SliverPadding(
                  padding:
                      EdgeInsets.symmetric(vertical: 4.84, horizontal: 5.w),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'General',
                          style: GoogleFonts.quicksand(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: adaptiveColor.withOpacity(0.5),
                          ),
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final Setting setting = settings[index];

                            return ListTile(
                              onTap:
                                  index == 0 ? () => model.openAbout() : () {},
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 1.h,
                                horizontal: 5.w,
                              ),
                              leading: Icon(
                                setting.icon.icon,
                                color: adaptiveColor,
                              ),
                              title: Text(
                                setting.label,
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                color: adaptiveColor,
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          itemCount: settings.length,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
