import 'package:capiie/modules/pages/bloc/register_bloc.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterInicioPage extends StatefulWidget {
  static const String route = "/";
  @override
  _RegisterInicioPageState createState() => _RegisterInicioPageState();
  static Page<dynamic> page() => MaterialPage(child: RegisterInicioPage());
}

class _RegisterInicioPageState extends State<RegisterInicioPage>
    with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<RegisterBloc>(context);
    //   _scale = 1 - _controller.value;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF8185E2),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
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
                    delay: 2000,
                    direction: 'up'),
              ),
              Column(
                children: [
                  DelayedAnimation(
                      child: Image.asset("assets/images/Startup_Outline.png"),
                      delay: 3000,
                      direction: "up"),
                ],
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
                        bloc.nextPage();
                      }),
                  delay: 4000,
                  direction: 'up'),
            ],
          ),
        ),
      ),
    );
  }
}
