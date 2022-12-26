import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/core/environment/env.dart';

@dev
@Singleton(as: Env, env: [Environment.dev])
class EnvDev extends Env {
  @override
  String get baseUrl => 'https://reqres.in/';

  @override
  String get authorizationHeader => '';

  @override
  AppEnvironment get environment => AppEnvironment.dev;

  @override
  Locale get locale => const Locale('fa');
}
