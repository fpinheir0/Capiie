import 'package:flutter/material.dart';

class HomeRobot extends StatelessWidget {
  HomeRobot({Key? key}) : super(key: key);

  static const String _tituloAppbar = 'Robot';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(_tituloAppbar),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Form(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset("assets/capiie.png"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "E-mail"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Telefone"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "WhatsApp"),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 134, 96, 248),
                onSurface: Colors.green,
                elevation: 20,
                shadowColor: Color.fromARGB(255, 72, 186, 139),
              ),
              child: Text('Take a picture!'),
              onPressed: () {},
            ),
            SizedBox(
              height: 40,
            ),
          ]),
        ),
      ),
    );
  }
}
