import 'package:capiie/pages/Page2.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:avatar_glow/avatar_glow.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;

  late AnimationController _controller;
  int _currentSliderValue = 2;
  List state = [
    {'state': '1.svg', 'text': 'REALMENTE TERRÍVEL'},
    {'state': '2.svg', 'text': 'UM POUCO RUIM'},
    {'state': '3.svg', 'text': 'COMPLETAMENTE OK'},
    {'state': '4.svg', 'text': 'MUITO BOM'},
    {'state': '5.svg', 'text': 'SUPER INCRÍVEL'}
  ];
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //   _scale = 1 - _controller.value;
    return Scaffold(
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
                            'assets/images/logo.png',
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
                      "Tudo bem, como você está agora",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.white),
                    ),
                    delay: delayedAmount + 1000,
                    direction: 'up'),
              ),
              SizedBox(
                height: 150.0,
              ),
              DelayedAnimation(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                          'assets/svg/' + state[_currentSliderValue]['state'],
                          color: Colors.white,
                          width: 80,
                          semanticsLabel: 'A red up arrow'),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        state[_currentSliderValue]['text'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  delay: delayedAmount + 1500,
                  direction: 'up'),
              SizedBox(
                height: 20.0,
              ),
              DelayedAnimation(
                  child: Slider(
                    value: _currentSliderValue.toDouble(),
                    min: 0,
                    max: 4,
                    // divisions: 5,
                    activeColor: Colors.white,
                    inactiveColor: Color(0xFF5C63CD),
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value.round();
                      });
                    },
                  ),
                  delay: delayedAmount + 1700,
                  direction: 'up'),
              SizedBox(
                height: 200.0,
              ),
              DelayedAnimation(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page2()));
                    },
                    child: _animatedButtonUI,
                  ),
                  delay: delayedAmount + 2300,
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
