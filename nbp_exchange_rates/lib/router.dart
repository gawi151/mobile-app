import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home_page.dart';

part 'router.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
