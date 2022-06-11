import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  final int delayedAmount = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF8185E2),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(children: <Widget>[
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
                "PAGE PICTURE",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
          ]),
        ),
      ),
    );
  }
}
