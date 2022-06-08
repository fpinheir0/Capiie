import 'package:capiie/modules/home/home_page.dart';
import 'package:capiie/modules/home/home_robo.dart';
import 'package:capiie/modules/login/login_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData.dark(),
      initialRoute: "/login",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/robot": (context) => HomeRobot()
      },
    );
  }
}
