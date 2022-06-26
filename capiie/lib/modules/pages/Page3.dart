import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/Page4.dart';
import 'package:capiie/modules/pages/bloc/cadastro_bloc.dart';
import 'package:capiie/modules/pages/bloc/cadastro_event.dart';
import 'package:capiie/modules/pages/bloc/cadastro_state.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class page3 extends StatefulWidget {
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;

  final GlobalKey _formkey = GlobalKey();
  bool texterror = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<cadastroBloc>(context);
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
                key: _formkey,
                padding: EdgeInsets.all(8.0),
                child: DelayedAnimation(
                  child: BlocBuilder<cadastroBloc, CadastroPageState>(
                    bloc: bloc,
                    builder: (context, state) {
                      return TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nome',
                            errorText:
                                texterror ? "Por favor insira o nome!" : null),
                        onChanged: (Cargo) =>
                            bloc.add(CadastroEventUpdate(Cargo: Cargo)),
                      );
                    },
                  ),
                  delay: 2000,
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page4()));
                    },
                    child: _animatedButtonUI,
                  ),
                  delay: 3000,
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
