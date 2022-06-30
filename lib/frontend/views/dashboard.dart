import 'package:flutter/material.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultSystemOverlay(
      scaffold: Scaffold(),
    );
  }
}
