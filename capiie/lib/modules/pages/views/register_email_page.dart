import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/bloc/register_bloc.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterEmailPage extends StatefulWidget {
  RegisterEmailPage({Key? key, required this.email}) : super(key: key);
  final String email;
  static Page<dynamic> page({required String email}) =>
      MaterialPage(child: RegisterEmailPage(email: email));

  @override
  State<RegisterEmailPage> createState() => _RegisterEmailPageState();
}

class _RegisterEmailPageState extends State<RegisterEmailPage> {
  final int delayedAmount = 500;

  bool texterror = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF8185E2),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: AvatarGlow(
                    endRadius: 70,
                    duration: Duration(seconds: 3),
                    glowColor: Color(0xFF9195FF),
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 2),
                    startDelay: Duration(seconds: 1),
                    child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Image.asset(
                            'assets/images/capiie.png',
                            width: 45,
                          ),
                          radius: 30.0,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: DelayedAnimation(
                    child: Text(
                      "Agora me diga seu e-mail ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    delay: 1000,
                    direction: 'up'),
              ),
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DelayedAnimation(
                    child: TextFormField(
                      controller: TextEditingController(text: widget.email),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          errorText:
                              texterror ? "Por favor insira o email!" : null),
                    ),
                    delay: 2000,
                    direction: 'up'),
              ),
              SizedBox(
                height: 40.0,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                ),
              ),
              DelayedAnimation(
                  child: FloatingActionButton(
                      child: Icon(Icons.chevron_right),
                      onPressed: () {
                        BlocProvider.of<RegisterBloc>(context).nextPage();
                      }),
                  delay: 3000,
                  direction: 'up'),
            ],
          ),
        ),
      ),
    );
  }
}
