import 'package:flutter/material.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: CustomAppBar(
          title: 'Attendance',
          centerTitle: true,
        ),
      ),
    );
  }
}
