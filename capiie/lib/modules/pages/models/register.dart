import 'package:equatable/equatable.dart';

class Register extends Equatable {
  final String nome;
  final String cargo;
  final String email;
  final int telefone;

  Register({
    required this.nome,
    required this.cargo,
    required this.email,
    required this.telefone,
  });

  Register.empty(
      {this.nome = "", this.cargo = "", this.email = "", this.telefone = 0});

  @override
  List<Object?> get props => [nome, cargo, email, telefone];

  @override
  bool get stringify => true;
}
