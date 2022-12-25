import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:{{app_name.snakeCase()}}/src/features/core/extensions/dio_ex.dart';
import 'package:{{app_name.snakeCase()}}/src/features/core/failures/api_failure.dart';
import 'package:{{app_name.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/data/data_sources/remote/{{feature_name.snakeCase()}}_end_points.dart';

abstract class {{feature_name.pascalCase()}}RemoteDataSource {
  Future<Either<ApiFailure, Map<String, dynamic>>> get{{feature_name.pascalCase()}}({
    int? page = 1,
  });
}

class {{feature_name.pascalCase()}}RemoteDataSourceImpl extends {{feature_name.pascalCase()}}RemoteDataSource {
  {{feature_name.pascalCase()}}RemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<ApiFailure, Map<String, dynamic>>> get{{feature_name.pascalCase()}}({
    int? page = 1,
  }) =>
      apiService
          .getMethod<Map<String, dynamic>>(
            '${const {{feature_name.pascalCase()}}Endpoints.get{{feature_name.pascalCase()}}().toPath}?page=$page',
          )
          .toNonNullDomain;
}
