import 'package:stacked/stacked.dart';

class SupportModel extends BaseViewModel {
  List<String> types = [
    'Type 1',
    'Type 2',
    'Type 3',
    'Type 4',
  ];

  String? selectedType;

  void updateType(String value) {
    selectedType = value;
    notifyListeners();
  }
}
