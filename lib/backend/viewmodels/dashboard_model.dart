import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class DashboardModel extends BaseViewModel {
  int currentIndex = 0;
  final PageController pageController = PageController();

  void setCurrentIndex(int index) {
    currentIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }
}
