import 'package:dartz/dartz.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/data/data_sources/remote/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/failures/{{feature_name.snakeCase()}}_failure.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/models/{{feature_name.snakeCase()}}_response.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}RepositoryImpl(this._remoteDS);
  final {{feature_name.pascalCase()}}RemoteDataSource _remoteDS;

  @override
  Future<Either<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}Response>> getUsers({
    int? page,
  }) =>
      _remoteDS.get{{feature_name.pascalCase()}}(page: page).then(
        (response) async {
          return response.fold(
            (l) async => left<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}Response>(
              {{feature_name.pascalCase()}}Failure.api(l),
            ),
            (r) async => right<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}Response>(
              {{feature_name.pascalCase()}}Response.fromJson(r),
            ),
          );
        },
      );
}
