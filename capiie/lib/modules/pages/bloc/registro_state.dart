import 'package:equatable/equatable.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object?> get props => [];
}

//NOME
class RegisterNamePageState extends RegisterState {
  final String nome;

  RegisterNamePageState({required this.nome});

  @override
  List<Object?> get props => [nome];
}

//CARGO
class RegisterCargoPageState extends RegisterState {
  final String cargo;

  RegisterCargoPageState({required this.cargo});

  @override
  List<Object?> get props => [cargo];
}

//EMAIL
class RegisterEmailPageState extends RegisterState {
  final String email;

  RegisterEmailPageState({required this.email});

  @override
  List<Object?> get props => [email];
}

//TELEFONE
class RegisterTelefonePageState extends RegisterState {
  final int telefone;

  RegisterTelefonePageState({required this.telefone});

  @override
  List<Object?> get props => [telefone];
}

class RegisterResumoPageState extends RegisterState {}

class RegisterCompletedState extends RegisterState {}
