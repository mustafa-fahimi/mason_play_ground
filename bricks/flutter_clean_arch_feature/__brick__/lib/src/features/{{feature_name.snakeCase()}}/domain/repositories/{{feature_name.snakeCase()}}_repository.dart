import 'package:dartz/dartz.dart';
import 'package:reference_flutter/src/features/{{feature_name.snakeCase()}}/domain/failures/{{feature_name.snakeCase()}}_failure.dart';
import 'package:reference_flutter/src/features/{{feature_name.snakeCase()}}/domain/models/{{feature_name.snakeCase()}}_response.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<Either<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}Response>> get{{feature_name.pascalCase()}}({
    int? page,
  });
}
