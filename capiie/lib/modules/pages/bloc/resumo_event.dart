import 'package:equatable/equatable.dart';

class resumoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class resumoFetchList extends resumoEvent {}

class resumoFetchListWithError extends resumoEvent {}

class resumoFetchListEmptyList extends resumoEvent {}
