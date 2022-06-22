import 'package:bloc/bloc.dart';
import 'package:capiie/modules/pages/bloc/cadastro_event.dart';
import 'package:capiie/modules/pages/bloc/cadastro_state.dart';
import 'package:capiie/modules/pages/resumo_cadastro.dart';

class cadastroBloc extends Bloc<CadastroEvent, CadastroPageState> {
  cadastroBloc() : super(CadastroInitial());

  Cadastro _cadastro = Cadastro.empty();

  @override
  Stream<CadastroPageState> mapEventToState(
    CadastroEvent event,
  ) async* {
    if (event is CadastroEventUpdate) {
      var novoCadastro = _updateCadastro(Nome: event.Nome, Cargo: event.Cargo, Email: event.Email, Telefone: event.Telefone, Image: event.Image,)
      yield CadastroDafaultState(cadastro: novoCadastro);
    }
  }

  Cadastro get cadastro => _cadastro;

  _updateCadastro({
    required String Nome,
    required String Cargo,
    required String Email,
    required int Telefone,
    required String Image,
  }) {
    _cadastro = _cadastro.copyWith(
      Nome: Nome,
      Cargo: Cargo,
      Email: Email,
      Telefone: Telefone,
      Image: Image,
    );
  }
}
