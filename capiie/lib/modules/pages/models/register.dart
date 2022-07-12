import 'package:equatable/equatable.dart';

class Register extends Equatable {
  final String nome;
  final String cargo;
  final String email;
  final String telefone;

  Register({
    required this.nome,
    required this.cargo,
    required this.email,
    required this.telefone,
  });

  Register.empty(
      {this.nome = "", this.cargo = "", this.email = "", this.telefone = ""});

  @override
  List<Object?> get props => [nome, cargo, email, telefone];

  Register copyWith({
    required String Nome,
    required String Cargo,
    required String Email,
    required String Telefone,
  }) {
    return Register(
      nome: nome,
      cargo: cargo,
      email: email,
      telefone: telefone,
    );
  }

  @override
  bool get stringify => true;
}
