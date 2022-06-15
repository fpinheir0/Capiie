import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/page_camera.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';

class pageFoto extends StatefulWidget {
  @override
  _pageFotoState createState() => _pageFotoState();
}

class _pageFotoState extends State<pageFoto> {
  final int delayedAmount = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF8185E2),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
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
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Que tal tirarmos uma foto para inserirmos em seu cartão ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
              Container(
                height: 450,
                width: 500,
                child: Image.asset("assets/images/photo.png"),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                ),
              ),
              DelayedAnimation(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pageCamera()));
                    },
                    child: _animatedButtonUI,
                  ),
                  delay: delayedAmount + 1000,
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
