import 'package:capiie/modules/pages/resumo_cadastro.dart';
import 'package:equatable/equatable.dart';

abstract class CadastroPageState extends Equatable {
  const CadastroPageState();

  @override
  List<Object?> get props => [];
}

class CadastroInitial extends CadastroPageState {}

class CadastroDafaultState extends CadastroPageState {
  CadastroDafaultState({
    required this.cadastro,
  });

  final Cadastro cadastro;

  @override
  List<Object?> get props => [];
}
