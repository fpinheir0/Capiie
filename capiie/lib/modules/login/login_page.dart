import 'package:capiie/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = 'Eai? Bora criar um cartão virtual?';
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text(_title)),
        body: Padding(
          padding: EdgeInsets.only(top: 300, left: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 134, 96, 248),
              onSurface: Colors.green,
              elevation: 50,
              shadowColor: Color.fromARGB(255, 72, 186, 139),
            ),
            child: Text('CLIQUE PARA COMEÇAR A CRIAR O CARTÃO VIRTUAL'),
            onPressed: () => Navigator.pushNamed(context, "/home"),
          ),
        ),
      );
}
