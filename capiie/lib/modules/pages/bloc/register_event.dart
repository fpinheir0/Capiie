import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  RegisterEvent();

  @override
  List<Object?> get props => [];
}

class RegisterUpdate extends RegisterEvent {
  final String Nome;
  final String Cargo;
  final String Email;
  final int Telefone;

  RegisterUpdate({
    required this.Nome,
    required this.Cargo,
    required this.Email,
    required this.Telefone,
  });
}

class RegisterNextPage extends RegisterEvent {}

class RegisterCompletedEvent extends RegisterEvent {}
