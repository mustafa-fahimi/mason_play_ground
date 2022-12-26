import 'package:api_service/api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/features/user/data/data_sources/remote/user_remote_data_source.dart';
import 'package:{{project_name.snakeCase()}}/src/features/user/data/repositories/user_repository_impl.dart';
import 'package:{{project_name.snakeCase()}}/src/features/user/domain/repositories/user_repository.dart';
import 'package:{{project_name.snakeCase()}}/src/features/user/domain/use_cases/get_users_use_case.dart';
import 'package:{{project_name.snakeCase()}}/src/injection/injectable.dart';

@module
abstract class UserFeatureModule {
  /// Data-Sources
  UserRemoteDataSource get remoteDS =>
      UserRemoteDataSourceImpl(getIt.get<ApiService>());

  /// Repositories
  UserRepository get repo => UserRepositoryImpl(remoteDS);

  /// Use cases
  GetUsersUseCase get getUsersUseCase => GetUsersUseCase(repo);
}
