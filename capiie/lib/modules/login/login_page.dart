import 'package:capiie/modules/flow/register_flow.dart';
import 'package:capiie/modules/pages/models/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = 'Eai? Bora criar um cartão virtual?';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _register = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text(LoginPage._title)),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Form(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/capiie.png"),
              ),
              Padding(padding: EdgeInsets.only(top: 6)),
              SizedBox(
                height: 32,
              ),
              Expanded(child: Text(_register)),
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
                  onPressed: () async {
                    var register =
                        await Navigator.pushNamed(context, RegisterFlow.route);
                    if (register is Register) {
                      setState(() {
                        _register = register.toString();
                      });
                    }
                  }),
            ]),
          ),
        ),
      );
}
