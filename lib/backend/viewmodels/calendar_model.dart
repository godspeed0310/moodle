import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class CalendarModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();

  void close() {
    navigationService.back();
  }
}
