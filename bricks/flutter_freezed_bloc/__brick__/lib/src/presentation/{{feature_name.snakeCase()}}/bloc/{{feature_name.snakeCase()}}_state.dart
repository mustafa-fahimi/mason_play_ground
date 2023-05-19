part of '{{feature_name.snakeCase()}}_bloc.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State.idle({
    @Default(false) bool isLoading,
    @Default(['Data1']) List<String> {{feature_name.camelCase()}},
  }) = _Idle;
}
