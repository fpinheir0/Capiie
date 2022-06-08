import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 134, 96, 248),
              onSurface: Colors.green,
              elevation: 20,
              shadowColor: Color.fromARGB(255, 72, 186, 139),
            ),
            child: Text('CLIQUE PARA COMEÇAR A CRIAR O CARTÃO VIRTUAL'),
            onPressed: () {},
          ),
        ),
      );
}
