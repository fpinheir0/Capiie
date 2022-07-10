import 'package:equatable/equatable.dart';

class Cadastro extends Equatable {
  final String Nome;
  final String Cargo;
  final String Email;
  final int Telefone;
  final String Image;

  Cadastro({
    required this.Nome,
    required this.Cargo,
    required this.Email,
    required this.Telefone,
    required this.Image,
  });

  Cadastro.empty({
    this.Nome = '',
    this.Cargo = '',
    this.Email = '',
    this.Telefone = 0,
    this.Image = '',
  });

  @override
  List<Object> get props => [
        Nome,
        Cargo,
        Email,
        Telefone,
        Image,
      ];

  Cadastro copyWith({
    String? Nome,
    String? Cargo,
    String? Email,
    int? Telefone,
    String? Image,
  }) {
    return Cadastro(
      Nome: Nome ?? this.Nome,
      Cargo: Cargo ?? this.Cargo,
      Email: Email ?? this.Email,
      Telefone: Telefone ?? this.Telefone,
      Image: Image ?? this.Image,
    );
  }
}
