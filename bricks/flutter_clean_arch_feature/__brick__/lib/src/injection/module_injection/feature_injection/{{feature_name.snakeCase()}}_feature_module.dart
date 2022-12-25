import 'package:api_service/api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:reference_flutter/src/features/{{feature_name.snakeCase()}}/data/data_sources/remote/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'package:reference_flutter/src/features/{{feature_name.snakeCase()}}/data/repositories/{{feature_name.snakeCase()}}_repository_impl.dart';
import 'package:reference_flutter/src/features/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:reference_flutter/src/features/{{feature_name.snakeCase()}}/domain/use_cases/get_{{feature_name.snakeCase()}}_use_case.dart';
import 'package:reference_flutter/src/injection/injectable.dart';

@module
abstract class {{feature_name.pascalCase()}}FeatureModule {
  /// Data-Sources
  {{feature_name.pascalCase()}}RemoteDataSource get remoteDS =>
      {{feature_name.pascalCase()}}RemoteDataSourceImpl(getIt.get<ApiService>());

  /// Repositories
  {{feature_name.pascalCase()}}Repository get repo => {{feature_name.pascalCase()}}RepositoryImpl(remoteDS);

  /// Use cases
  Get{{feature_name.pascalCase()}}UseCase get get{{feature_name.pascalCase()}}UseCase => Get{{feature_name.pascalCase()}}UseCase(repo);
}
