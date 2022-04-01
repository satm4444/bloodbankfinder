import 'package:bloodbankfinder/controllers/data_controller.dart';
import 'package:bloodbankfinder/widgets/bottom_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final DataController data = Get.put(DataController());
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Blood Bank Finder',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomNavBarWidget());
  }
}
