import 'package:equatable/equatable.dart';

class CadastroEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CadastroEventUpdate extends CadastroEvent {
  final String Nome;
  final String Cargo;
  final String Email;
  final int Telefone;
  final String Image;

  CadastroEventUpdate(
    this.Nome,
    this.Cargo,
    this.Email,
    this.Telefone,
    this.Image,
  );
}
