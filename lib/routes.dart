import 'package:go_router/go_router.dart';
import 'package:taskill_app/providers.dart';

import 'pages/login_page.dart';
import 'pages/task_page.dart';
import 'pages/tasks_page.dart';
import 'services/auth_service.dart';

final routes = GoRouter(
  initialLocation: '/tasks',
  refreshListenable: getIt<AuthService>(),
  redirect: (_, state) {
    final isAuthenticated = getIt<AuthService>().isAuthenticated;
    final isLoginRoute = state.subloc == '/login';

    if (!isAuthenticated) {
      return isLoginRoute ? null : '/login';
    }

    if (isLoginRoute) {
      return '/tasks';
    }

    return null;
  },
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/tasks', builder: (context, state) => TasksPage()),
    GoRoute(
        path: '/task/:id',
        builder: (context, state) {
          var taskId = state.params['id'] ?? 'null';
          return TaskPage(id: taskId);
        }),
  ],
);
