import 'package:dartz/dartz.dart';
import 'package:{{app_name.snakeCase()}}/src/features/core/models/tuple.dart' as tuple;
import 'package:{{app_name.snakeCase()}}/src/features/core/use_case.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/failures/{{feature_name.snakeCase()}}_failure.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/models/{{feature_name.snakeCase()}}_response.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class Get{{feature_name.pascalCase()}}UseCase
    implements UseCase<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}Response, tuple.Tuple1<int?>> {
  const Get{{feature_name.pascalCase()}}UseCase(this.repo);

  final {{feature_name.pascalCase()}}Repository repo;

  @override
  Future<Either<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}Response>> call({
    tuple.Tuple1<int?>? param,
  }) =>
      (param == null)
          ? Future.value(left(const {{feature_name.pascalCase()}}Failure.nullParam()))
          : repo.get{{feature_name.pascalCase()}}(page: param.value1);
}
