import 'package:moodle/backend/app/app.locator.dart';
import 'package:moodle/backend/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  openAbout() {
    _navigationService.navigateTo(Routes.aboutSchool);
  }

  openAboutApp() {
    _navigationService.navigateTo(Routes.aboutApp);
  }

  openSupport() {
    _navigationService.navigateTo(Routes.supportView);
  }
}
