import 'package:capiie/modules/login/login_page.dart';
import 'package:capiie/modules/pages/bloc/cadastro_bloc.dart';
import 'package:capiie/modules/pages/bloc/cadastro_event.dart';
import 'package:capiie/modules/pages/bloc/cadastro_state.dart';
import 'package:capiie/modules/pages/page_resumo.dart';
import 'package:capiie/modules/pages/resumo_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capiie Totem',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: BlocProvider<cadastroBloc>(
        create: (BuildContext context) => cadastroBloc(),
        child: LoginPage(),
      ),
    );
  }
}
