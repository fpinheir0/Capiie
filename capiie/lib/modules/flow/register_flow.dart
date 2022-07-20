import 'package:capiie/modules/pages/bloc/register_bloc.dart';
import 'package:capiie/modules/pages/bloc/registro_state.dart';
import 'package:capiie/modules/pages/views/register_cargo_page.dart';
import 'package:capiie/modules/pages/views/register_email_page.dart';
import 'package:capiie/modules/pages/views/register_name_page.dart';
import 'package:capiie/modules/pages/views/register_telefone_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFlow extends StatelessWidget {
  RegisterFlow({Key? key}) : super(key: key);

  static const String route = "/register";
  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<RegisterBloc>(context);
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state is RegisterCompletedState) {
          Navigator.pop(context, bloc.register);
        }
      },
      child: BlocBuilder<RegisterBloc, RegisterState>(
        bloc: bloc,
        builder: (context, state) {
          return Navigator(
            pages: pages(bloc, state),
            onPopPage: (route, result) {
              bloc.previousPage();
              return route.didPop(result);
            },
          );
        },
      ),
    );
  }

  List<Page<dynamic>> pages(RegisterBloc bloc, RegisterState state) {
    final list = <Page<dynamic>>[];
    final namePage = RegisterNamePage.page(nome: bloc.register.nome);
    final cargoPage = RegisterCargoPage.page(cargo: bloc.register.cargo);
    final emailPage = RegisterEmailPage.page(email: bloc.register.email);
    final telefonePage =
        RegisterTelefonePage.page(telefone: bloc.register.telefone.toString());

    if (state is RegisterNamePageState) {
      list.add(namePage);
    }

    if (state is RegisterCargoPageState) {
      list.addAll([namePage, cargoPage]);
    }

    if (state is RegisterEmailPageState) {
      list.addAll([namePage, cargoPage, emailPage]);
    }

    if (state is RegisterTelefonePageState) {
      list.addAll([namePage, cargoPage, emailPage, telefonePage]);
    }
    // if (state is RegisterResumoPageState) {
    //   list.addAll([namePage, cargoPage, emailPage, telefonePage]);
    // }
    return list;
  }
}
