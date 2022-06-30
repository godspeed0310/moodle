import 'package:flutter/material.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/default_system_overlay.dart';

class FeesView extends StatelessWidget {
  const FeesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultSystemOverlay(
      scaffold: Scaffold(
        appBar: CustomAppBar(
          title: 'Fees',
          centerTitle: true,
        ),
      ),
    );
  }
}
