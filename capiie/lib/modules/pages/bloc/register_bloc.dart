import 'package:bloc/bloc.dart';
import 'package:capiie/modules/pages/bloc/register_event.dart';
import 'package:capiie/modules/pages/bloc/registro_state.dart';
import 'package:capiie/modules/pages/models/register.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterNamePageState(nome: ''));

  Register _register = Register.empty();

  Register get register => _register;

  RegisterState _previousState = RegisterNamePageState(nome: '');

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is RegisterNextPage) {
      yield _nextPage();
    }

    if (event is RegisterPreviousPage) {
      yield _previousPage();
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
    _previousState = state;
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
      case RegisterTelefonePageState:
        nextState = RegisterResumoPageState();
        break;
    }
    return nextState;
  }

  void previousPage() {
    this.add(RegisterPreviousPage());
  }

  RegisterState _previousPage() {
    return _previousState;
  }
}
