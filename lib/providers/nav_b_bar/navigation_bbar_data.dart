import 'package:flutter/material.dart';

class NavigationBBarData extends ChangeNotifier {
  int currentIndex = 0;
  PageController pageController;

  final GlobalKey<FormFieldState<String>> orderFormKey = GlobalKey();

  void pageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void animateToPage() {
    pageController.animateToPage(currentIndex,
        duration: Duration(milliseconds: 500), curve: Curves.linear);
    notifyListeners();
  }
}
