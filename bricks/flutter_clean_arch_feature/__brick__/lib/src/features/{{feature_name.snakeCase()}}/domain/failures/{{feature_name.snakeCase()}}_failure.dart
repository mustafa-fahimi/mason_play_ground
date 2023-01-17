import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{project_name.snakeCase()}}/src/features/core/failures/api_failure.dart';
import 'package:{{project_name.snakeCase()}}/src/features/core/failures/failure.dart';

part '{{feature_name.snakeCase()}}_failure.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}Failure extends Failure with _${{feature_name.pascalCase()}}Failure {
  const factory {{feature_name.pascalCase()}}Failure.api(ApiFailure failure) = _Api;
  const factory {{feature_name.pascalCase()}}Failure.nullParam() = _NullParam;
}
