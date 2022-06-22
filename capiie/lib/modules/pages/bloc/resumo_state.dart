import 'package:capiie/modules/pages/page_resumo.dart';
import 'package:equatable/equatable.dart';

class resumoPageState extends Equatable {
  @override
  List<Object?> get props => [];
}

class resumoPageError extends PageResumo {
  final String message;

  resumoPageError(this.message);
}

class resumoLoadPage extends resumoPageState {
  final List<String> list;

  resumoLoadPage({required this.list});
}

class resumoPageEmptyList extends PageResumo {}
