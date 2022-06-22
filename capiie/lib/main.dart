import 'package:capiie/modules/login/login_page.dart';
import 'package:capiie/modules/pages/bloc/resumo_bloc.dart';
import 'package:capiie/modules/pages/bloc/resumo_event.dart';
import 'package:capiie/modules/pages/bloc/resumo_state.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: BlocProvider<resumoBloc>(
        create: (BuildContext context) =>
            resumoBloc(resumoPageState())..add(resumoFetchList()),
        child: LoginPage(),
      ),
    );
  }
}
