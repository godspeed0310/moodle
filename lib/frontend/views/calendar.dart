import 'package:flutter/material.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: adaptiveColor,
            ),
          ),
          title: 'Calendar',
          centerTitle: true,
        ),
      ),
    );
  }
}
