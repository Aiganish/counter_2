import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'first/first_page.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  CounterApp();

  String title = 'Counter App';
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
