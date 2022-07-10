import 'package:capiie/modules/flow/register_flow.dart';
import 'package:capiie/modules/login/login_page.dart';
import 'package:capiie/modules/pages/bloc/register_bloc.dart';
import 'package:capiie/modules/pages/views/page_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static Route<dynamic> routes(RouteSettings settings) {
    var newRoute;
    switch (settings.name) {
      case LoginPage.route:
        newRoute = MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
        break;

      case RegisterFlow.route:
        newRoute = MaterialPageRoute(
          builder: (context) => BlocProvider<RegisterBloc>(
            create: (context) => RegisterBloc(),
            child: RegisterFlow(),
          ),
        );
        break;
    }
    return newRoute;
  }
}
