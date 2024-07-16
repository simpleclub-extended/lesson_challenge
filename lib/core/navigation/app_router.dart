import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/lesson_details/view/lesson_details_page.dart';
import '../../features/lessons/lessons.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter();

  late final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        redirect: (_, __) => '/lessons',
      ),
      GoRoute(
        path: '/lessons',
        pageBuilder: (context, state) {
          return const MaterialPage(
            key: ValueKey('lessons'),
            child: LessonsPage(),
          );
        },
        routes: [
          GoRoute(
            path: ':id',
            redirect: (context, state) {
              if (!state.pathParameters.containsKey('id')) {
                return '/lessons';
              }
              return null;
            },
            pageBuilder: (context, state) {
              final id = state.pathParameters['id']!;
              return MaterialPage(
                key: ValueKey('lesson-$id'),
                child: LessonDetailsPage(id: id),
              );
            },
          ),
        ],
      ),
    ],
  );
}
