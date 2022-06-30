import 'package:moodle/backend/models/homework.dart';
import 'package:stacked/stacked.dart';

class HomeworkModel extends BaseViewModel {
  void updateCompleted(Homework homework) {
    homework.isDone = !homework.isDone;
    notifyListeners();
  }
}
