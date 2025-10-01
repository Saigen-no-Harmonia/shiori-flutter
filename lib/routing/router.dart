import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/main/ui/main_screen.dart';
import '../features/publication_end/ui/publication_end_screen.dart';
import '../features/publication_end/ui/view_model/publication_end_view_model.dart';
import 'routes.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  // 公開終了チェック
  final isPublicationEnded = ref.watch(publicationEndViewModelProvider);

  if (isPublicationEnded) {
    // 公開終了時のルーター
    return GoRouter(
      initialLocation: Routes.publicationEnd,
      routes: [
        GoRoute(
          path: Routes.publicationEnd,
          builder: (context, state) => const PublicationEndScreen(),
        ),
      ],
    );
  }

  // 通常時のルーター
  return GoRouter(
    initialLocation: Routes.main,
    routes: [
      GoRoute(
        path: Routes.main,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
