import 'package:bloc/bloc.dart';
import 'package:capiie/modules/models/register.dart';
import 'package:capiie/modules/pages/bloc/register_event.dart';
import 'package:capiie/modules/pages/bloc/registro_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterNamePageState(nome: ''));

  Register _register = Register.empty();

  Register get register => _register;
  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is RegisterNextPage) {
      yield _nextPage();
    }

    if (event is RegisterCompletedEvent) {
      yield _completeFlow();
    }
  }

  void complete() {
    this.add(RegisterCompletedEvent());
  }

  RegisterState _completeFlow() {
    return RegisterCompletedState();
  }

  void nextPage() {
    this.add(RegisterNextPage());
  }

  RegisterState _nextPage() {
    var nextState;
    switch (state.runtimeType) {
      case RegisterNamePageState:
        nextState = RegisterCargoPageState(cargo: _register.cargo);
        break;
      case RegisterCargoPageState:
        nextState = RegisterEmailPageState(email: _register.email);
        break;
      case RegisterEmailPageState:
        nextState = RegisterTelefonePageState(telefone: _register.telefone);
        break;
    }
    return nextState;
  }
}
