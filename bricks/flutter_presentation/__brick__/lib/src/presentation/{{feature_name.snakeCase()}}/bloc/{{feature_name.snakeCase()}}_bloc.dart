import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{feature_name.snakeCase()}}_bloc.freezed.dart';
part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

@injectable
class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc() : super(const _Idle()) {
    on<_Get{{feature_name.pascalCase()}}>(_onGet{{feature_name.pascalCase()}});
  }

  FutureOr<void> _onGet{{feature_name.pascalCase()}}(
    _Get{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit(const _Idle(isLoading: true));
  }
}
