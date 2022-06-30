import 'package:flutter/material.dart';
import 'package:moodle/backend/viewmodels/dashboard_model.dart';
import 'package:moodle/frontend/views/tabs/account.dart';
import 'package:moodle/frontend/views/tabs/home.dart';
import 'package:moodle/frontend/views/tabs/notifications.dart';
import 'package:moodle/frontend/views/tabs/search.dart';
import 'package:moodle/frontend/widgets/bottom_navbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardModel>.reactive(
      viewModelBuilder: () => DashboardModel(),
      builder: (context, model, child) {
        return DefaultSystemOverlay(
          scaffold: Scaffold(
            body: PageView(
              controller: model.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const HomeTab(),
                SearchTab(
                  onBack: () => model.goBack(),
                ),
                NotificationsTab(
                  onBack: () => model.goBack(),
                ),
                AccountTab(
                  onBack: () => model.goBack(),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavbar(
              onTabSelected: (index) => model.setCurrentIndex(index),
              selectedIndex: model.currentIndex,
            ),
          ),
        );
      },
    );
  }
}
