import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:{{project_name.snakeCase()}}/src/config/config.dart';
import 'package:{{project_name.snakeCase()}}/src/core/core.dart';
import 'package:{{project_name.snakeCase()}}/src/core/interceptors/global_request_suplier.dart';
import 'package:{{project_name.snakeCase()}}/src/core/interceptors/request_interceptor.dart';
import 'package:{{project_name.snakeCase()}}/src/injection/injectable.dart';

class MainModulesInjection {
  MainModulesInjection() {
    getIt
      ..registerSingleton<Dio>(Dio())
      ..registerSingleton<Logger>(Logger(printer: PrettyPrinter()))
      ..registerLazySingleton<AppRouter>(AppRouter.new)
      ..registerLazySingleton<DatabaseService>(DatabaseServiceImpl.new)
      ..registerLazySingleton<GlobalRequestSupplier>(GlobalRequestSupplier.new)
      ..registerLazySingleton<ApiService>(
        () => ApiServiceImpl(
          interceptors: [
            getIt.get<RequestInterceptor>(param1: getIt.get<Env>()),
          ],
          dio: getIt.get<Dio>(),
        ),
      );
  }

  /// call the `initialize` method of the database_service
  /// to create database file
  Future<void> initDatabase() async =>
      getIt.get<DatabaseService>().initialize();

  Future<void> registerHiveAdapters() async {
    getIt.get<DatabaseService>();
  }
}
