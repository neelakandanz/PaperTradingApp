import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/chart_page.dart';
import '../view/stock_page.dart';
import '../view/my_trade_page.dart';


class MyController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    StockPage(),
    ChartPage(),
    MyTradePage(),
  ];

  void onTabTapped(int index) {
    selectedIndex.value = index;
  }

  @override
  void onClose() {
    // Perform any additional cleanup if needed
    super.onClose();
  }
}
