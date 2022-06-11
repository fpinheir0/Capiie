import 'package:capiie/modules/pages/Page2.dart';
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
                padding: EdgeInsets.only(right: 20.0, left: 20),
                child: DelayedAnimation(
                    child: Text(
                      "Olá Humano, meu nome é Capiie e vou te ajudar durante o processo de criação do nosso cartão virtual",
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
                height: 70.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DelayedAnimation(
                    child: Text(
                      "Me diga como você está se sentindo?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    delay: delayedAmount + 3000,
                    direction: 'up'),
              ),
              SizedBox(
                height: 40.0,
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
                        height: 15.0,
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
                  delay: delayedAmount + 4000,
                  direction: 'up'),
              SizedBox(
                height: 50.0,
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
                  delay: delayedAmount + 4000,
                  direction: 'up'),
              SizedBox(
                height: 80.0,
              ),
              DelayedAnimation(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page2()));
                    },
                    child: _animatedButtonUI,
                  ),
                  delay: delayedAmount + 5000,
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
