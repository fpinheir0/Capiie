import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/bloc/register_bloc.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterNamePage extends StatefulWidget {
  RegisterNamePage({Key? key, required this.nome}) : super(key: key);
  final String nome;
  static Page<dynamic> page({required String nome}) =>
      MaterialPage(child: RegisterNamePage(nome: nome));

  @override
  State<RegisterNamePage> createState() => _RegisterNamePageState();
}

class _RegisterNamePageState extends State<RegisterNamePage> {
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
                padding: EdgeInsets.only(right: 20.0, left: 20),
                child: DelayedAnimation(
                    child: Text(
                      "Para que possamos ficar mais próximos me diga seu nome ?",
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
                      onChanged: (Nome) => bloc.updateRegister(Nome: Nome),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nome',
                          errorText:
                              texterror ? "Por favor insira o nome!" : null),
                    ),
                    delay: 2000,
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
