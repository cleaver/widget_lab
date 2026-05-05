import 'package:flutter/material.dart';
import 'package:widget_lab/config/router.dart';
import 'package:widget_lab/services/topic_repository.dart';

void main() {
  runApp(const WidgetLabApp());
}

class WidgetLabApp extends StatefulWidget {
  const WidgetLabApp({super.key});

  @override
  State<WidgetLabApp> createState() => _WidgetLabAppState();
}

class _WidgetLabAppState extends State<WidgetLabApp> {
  final TopicRepository _repository = const TopicRepository();
  late final router = buildRouter(_repository);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Widget Lab',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
