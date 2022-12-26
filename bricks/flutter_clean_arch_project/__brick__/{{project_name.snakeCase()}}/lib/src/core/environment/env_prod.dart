import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/core/environment/env.dart';

@prod
@Singleton(as: Env, env: [Environment.prod])
class EnvProd extends Env {
  @override
  String get baseUrl => '';

  @override
  String get authorizationHeader => '';

  @override
  AppEnvironment get environment => AppEnvironment.prod;

  @override
  Locale get locale => const Locale('fa');
}
