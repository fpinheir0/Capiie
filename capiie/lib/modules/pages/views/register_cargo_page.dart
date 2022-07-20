import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/bloc/register_bloc.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCargoPage extends StatefulWidget {
  RegisterCargoPage({Key? key, required this.cargo}) : super(key: key);
  final String cargo;
  static Page<dynamic> page({required String cargo}) =>
      MaterialPage(child: RegisterCargoPage(cargo: cargo));

  @override
  State<RegisterCargoPage> createState() => _RegisterCargoPageState();
}

class _RegisterCargoPageState extends State<RegisterCargoPage> {
  final int delayedAmount = 500;

  bool texterror = false;

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<RegisterBloc>(context);
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
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shooow! seja bem vindo! vamos começar a criação do seu cartão de vez!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: DelayedAnimation(
                    child: Text(
                      "Que tal você me falar onde é que você trabalha ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    delay: 2000,
                    direction: 'up'),
              ),
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DelayedAnimation(
                  child: TextFormField(
                    onChanged: (Cargo) => bloc.updateRegister(Cargo: Cargo),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Cargo',
                        errorText:
                            texterror ? "Por favor insira o cargo!" : null),
                  ),
                  delay: 3000,
                  direction: "up",
                ),
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
