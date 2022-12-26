import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/home/pages/home_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/home',
      initial: true,
    ),
    RedirectRoute(path: '*', redirectTo: '/splash'),
  ],
)
class AppRouter extends _$AppRouter {}
