import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/main/ui/main_screen.dart';
import 'routes.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.main,
  routes: [
    GoRoute(
      path: Routes.main,
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
