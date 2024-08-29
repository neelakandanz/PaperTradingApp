import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/mvc/controller/page_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Paper Trading',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Use Get.put to create and manage the controller
  final MyController _controller = Get.put(MyController());

   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paper Trading'),
      ),
      body: Obx(() => _controller.pages[_controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up_outlined),
              label: 'Stock',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Chart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Trade',
            ),
          ],
          currentIndex: _controller.selectedIndex.value,
          selectedItemColor: Colors.blue,
          onTap: (index) => _controller.onTabTapped(index),
        ),
      ),
    );
  }
}
