import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/page_foto.dart';
import 'package:capiie/modules/pages/page_resumo.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';

class page5 extends StatefulWidget {
  @override
  _page5State createState() => _page5State();
}

class _page5State extends State<page5> {
  final int delayedAmount = 500;

  TextEditingController txtTelefone = new TextEditingController();

  void Salvar() {
    String telefone;

    setState(() {
      telefone = txtTelefone.text;

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => pageFoto()));
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
                      "Quem sabe possamos conversar, me passa seu telefone/WhatsApp?",
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
                padding: const EdgeInsets.all(8.0),
                child: DelayedAnimation(
                    child: TextFormField(
                      controller: txtTelefone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Telefone/WhatsApp',
                      ),
                    ),
                    delay: delayedAmount + 5000,
                    direction: 'up'),
              ),
              SizedBox(
                height: 40.0,
              ),
              Divider(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                ),
              ),
              DelayedAnimation(
                  child: GestureDetector(
                    onTap: () {
                      Salvar();
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
