import 'package:capiie/modules/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Capiie Totem',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
