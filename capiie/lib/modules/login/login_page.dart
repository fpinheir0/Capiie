import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = 'Eai? Bora criar um cartão virtual?';
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text(_title)),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/images/capiie.png"),
                ),
                Padding(padding: EdgeInsets.only(top: 6)),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 134, 96, 248),
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    onSurface: Colors.green,
                    elevation: 20,
                    shadowColor: Color.fromARGB(255, 72, 186, 139),
                  ),
                  child: Text('Bora criar o cartão ?'),
                  onPressed: () => Navigator.pushNamed(context, "/robot"),
                ),
              ],
            ),
          ),
        ),
      );
}
