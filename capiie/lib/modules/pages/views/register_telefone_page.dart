import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/bloc/register_bloc.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterTelefonePage extends StatefulWidget {
  RegisterTelefonePage({Key? key, required this.telefone}) : super(key: key);
  final String telefone;
  static Page<dynamic> page({required String telefone}) =>
      MaterialPage(child: RegisterTelefonePage(telefone: telefone));

  @override
  State<RegisterTelefonePage> createState() => _RegisterTelefonePageState();
}

class _RegisterTelefonePageState extends State<RegisterTelefonePage> {
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
                      onChanged: (Telefone) =>
                          bloc.updateRegister(Telefone: Telefone),
                      controller: TextEditingController(text: widget.telefone),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Telefone',
                          errorText: texterror
                              ? "Por favor insira o Telefone!"
                              : null),
                    ),
                    delay: 3000,
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
                  child: FloatingActionButton(
                      child: Icon(Icons.chevron_right),
                      onPressed: () {
                        bloc.complete();
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
