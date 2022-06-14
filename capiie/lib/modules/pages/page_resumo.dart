import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class PageResumo extends StatefulWidget {
  @override
  _PageResumoState createState() => _PageResumoState();
}

class _PageResumoState extends State<PageResumo>
    with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //   _scale = 1 - _controller.value;
    return Scaffold(
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
                      )),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
