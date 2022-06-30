import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:moodle/backend/viewmodels/support_model.dart';
import 'package:moodle/frontend/widgets/custom_appbar.dart';
import 'package:moodle/frontend/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import 'package:stacked/stacked.dart';

class SupportView extends StatelessWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return ViewModelBuilder<SupportModel>.reactive(
      viewModelBuilder: () => SupportModel(),
      builder: (context, model, child) {
        return DefaultSystemOverlay(
          scaffold: Scaffold(
            appBar: const CustomAppBar(
              title: 'Support',
              centerTitle: true,
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              children: [
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    hintText: 'Select Type *',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.33.w),
                    ),
                  ),
                  value: model.selectedType,
                  items: model.types
                      .map(
                        (String type) => DropdownMenuItem<String>(
                          value: type,
                          child: Text(type),
                        ),
                      )
                      .toList(),
                  onChanged: (value) => model.updateType,
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.33.w),
                      borderSide: BorderSide(
                        color: adaptiveColor.withOpacity(0.5),
                      ),
                    ),
                    labelText: 'Subject *',
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextField(
                  minLines: 7,
                  maxLines: 15,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Description *',
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.33.w),
                      borderSide: BorderSide(
                        color: adaptiveColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                        vertical: 1.5.h,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.66.w),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(EvaIcons.paperPlaneOutline),
                  label: const Text('Submit'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
