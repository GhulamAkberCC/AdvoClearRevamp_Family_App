import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewPatientController extends GetxController {
  static const List<String> _tabsList = ["", "Notes", "Docs"];
  List<String> get tabsList => _tabsList;

  static final PageController _pageController = PageController();
  PageController get pageController => _pageController;

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  setSelectedIndex(int index) {
    _selectedIndex = index;
    refresh();
  }
}
