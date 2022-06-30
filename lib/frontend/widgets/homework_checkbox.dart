import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodle/backend/models/homework.dart';
import 'package:sizer/sizer.dart';

class HomeworkCheckbox extends StatelessWidget {
  final Homework homework;
  final Function(bool) onChanged;

  const HomeworkCheckbox(
      {Key? key, required this.homework, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      checkboxShape: const CircleBorder(),
      value: homework.isDone,
      title: Text(
        homework.title,
        style: GoogleFonts.quicksand(
          fontWeight: FontWeight.w500,
          fontSize: 10.5.sp,
        ),
      ),
      subtitle: Text(
        '${homework.subject.name} / ${homework.date}',
        style: GoogleFonts.quicksand(
          fontSize: 10.5.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (value) => onChanged(value!),
    );
  }
}
