import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{project_name.snakeCase()}}/src/features/core/failures/api_failure.dart';
import 'package:{{project_name.snakeCase()}}/src/features/core/failures/failure.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure extends Failure with _$UserFailure {
  const factory UserFailure.api(ApiFailure failure) = _Api;
  const factory UserFailure.nullParam() = _NullParam;
}
