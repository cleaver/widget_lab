import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_lab/screens/home/home_screen.dart';
import 'package:widget_lab/screens/topic_detail/topic_detail_screen.dart';
import 'package:widget_lab/screens/topics/day01.dart';
import 'package:widget_lab/services/topic_repository.dart';

class RouteLogObserver extends NavigatorObserver {
  void _log(String message) {
    debugPrint('[router] $message');
    dev.log(message, name: 'router');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _log(
      'push: ${route.settings.name ?? route.settings.arguments ?? route.settings}',
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _log(
      'pop: ${route.settings.name ?? route.settings.arguments ?? route.settings}',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _log('replace: ${oldRoute?.settings} -> ${newRoute?.settings}');
  }
}

GoRouter buildRouter(TopicRepository repository) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    observers: <NavigatorObserver>[RouteLogObserver()],
    routes: <RouteBase>[
      GoRoute(
        name: 'home',
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen(repository: repository);
        },
      ),
      GoRoute(
        name: 'day1',
        path: '/topic/day-1',
        builder: (context, state) => Day01ProfileHeaderScreen(),
      ),
      GoRoute(
        name: 'topicDetail',
        path: '/topic/:topicId',
        builder: (BuildContext context, GoRouterState state) {
          final String topicId = state.pathParameters['topicId'] ?? '';
          final topic = repository.topicById(topicId);

          if (topic == null) {
            return const _TopicNotFoundScreen();
          }

          return TopicDetailScreen(topic: topic);
        },
      ),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) {
      return const _RouteNotFoundScreen();
    },
  );
}

class _TopicNotFoundScreen extends StatelessWidget {
  const _TopicNotFoundScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Topic not found')),
      body: const Center(child: Text('Requested topic does not exist yet.')),
    );
  }
}

class _RouteNotFoundScreen extends StatelessWidget {
  const _RouteNotFoundScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page not found')),
      body: const Center(child: Text('Requested page does not exist.')),
    );
  }
}
