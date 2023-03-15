import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/core/core.dart';
import 'package:{{project_name.snakeCase()}}/src/features/core/failures/parse_failure.dart';
import 'package:{{project_name.snakeCase()}}/src/features/core/models/tuple.dart';
import 'package:{{project_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/models/{{feature_name.snakeCase()}}_response.dart';
import 'package:{{project_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/use_cases/get_{{feature_name.snakeCase()}}_use_case.dart';

part '{{feature_name.snakeCase()}}_bloc.freezed.dart';
part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

@injectable
class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc(this.get{{feature_name.pascalCase()}}UseCase) : super(const _Idle()) {
    on<_Get{{feature_name.pascalCase()}}>(_onGet{{feature_name.pascalCase()}});
  }

  final Get{{feature_name.pascalCase()}}UseCase get{{feature_name.pascalCase()}}UseCase;

  FutureOr<void> _onGet{{feature_name.pascalCase()}}(
    _Get{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    try {
      emit(const _Idle(isLoading: true));
      final get{{feature_name.pascalCase()}}Result = await get{{feature_name.pascalCase()}}UseCase(
        param: const Tuple1(1),
      );
      get{{feature_name.pascalCase()}}Result.fold(
        (l) {
          AppHelper().logMessage(l.toMessage());
          emit(state.copyWith(isLoading: false));
        },
        (r) => emit(
          state.copyWith(
            isLoading: false,
            {{feature_name.camelCase()}}: r,
          ),
        ),
      );
    } catch (e) {
      AppHelper().logMessage(e.toString());
    }
  }
}
