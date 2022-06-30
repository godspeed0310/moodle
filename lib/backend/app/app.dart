import 'package:moodle/frontend/views/about_app.dart';
import 'package:moodle/frontend/views/about_school.dart';
import 'package:moodle/frontend/views/dashboard.dart';
import 'package:moodle/frontend/views/support.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: DashboardView, initial: true),
  MaterialRoute(page: AboutSchool),
  MaterialRoute(page: AboutApp),
  MaterialRoute(page: SupportView),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: DialogService),
])
class App {}
