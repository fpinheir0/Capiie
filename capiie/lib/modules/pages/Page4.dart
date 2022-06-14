import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/page5.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  final int delayedAmount = 500;

  TextEditingController txtEmail = new TextEditingController();
  bool texterror = false;

  void Salvar() {
    String email;

    setState(() {
      email = txtEmail.text;

      Navigator.push(context, MaterialPageRoute(builder: (context) => page5()));
    });
  }

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
                    delay: delayedAmount + 2000,
                    direction: 'up'),
              ),
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DelayedAnimation(
                    child: TextFormField(
                      controller: txtEmail,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          errorText: texterror
                              ? "Por favor insira o email correto!"
                              : null),
                    ),
                    delay: delayedAmount + 5000,
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
                  child: GestureDetector(
                    onTap: () {
                      if (txtEmail.text.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(txtEmail.text)) {
                        setState(() {
                          texterror = true;
                        });
                      } else {
                        setState(() {
                          texterror = false;
                          Salvar();
                        });
                      }
                    },
                    child: _animatedButtonUI,
                  ),
                  delay: delayedAmount + 7000,
                  direction: 'up'),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
        height: 60,
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            'CONTINUE',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8185E2),
            ),
          ),
        ),
      );
}
