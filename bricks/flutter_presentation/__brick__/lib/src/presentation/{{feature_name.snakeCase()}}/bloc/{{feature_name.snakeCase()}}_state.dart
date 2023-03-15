part of '{{feature_name.snakeCase()}}_bloc.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State.idle({
    @Default(false) bool isLoading,
    @Default({{feature_name.pascalCase()}}Response()) {{feature_name.pascalCase()}}Response {{feature_name.camelCase()}},
  }) = _Idle;
}
