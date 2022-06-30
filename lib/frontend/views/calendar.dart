import 'package:flutter/material.dart';
import 'package:moodle/backend/viewmodels/calendar_model.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';
import 'package:stacked/stacked.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return ViewModelBuilder<CalendarModel>.reactive(
      viewModelBuilder: () => CalendarModel(),
      builder: (context, model, child) {
        return DefaultSystemOverlay(
          scaffold: Scaffold(
            appBar: CustomAppBar(
              leading: IconButton(
                onPressed: () => model.close(),
                icon: Icon(
                  Icons.arrow_back,
                  color: adaptiveColor,
                ),
              ),
              title: 'Calendar',
              centerTitle: true,
            ),
          ),
        );
      },
    );
  }
}
