import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_lab/services/topic_repository.dart';
import 'package:widget_lab/widgets/topic_list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.repository});

  final TopicRepository repository;

  @override
  Widget build(BuildContext context) {
    final List<String> categories = repository.categories;

    return Scaffold(
      appBar: AppBar(title: const Text('Widget Lab')),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final String category = categories[index];
          final topics = repository.topicsByCategory(category);

          return Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(category, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(
                  '${topics.length} topics',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 8),
                if (topics.isEmpty)
                  const Text('No topics yet.')
                else
                  ...topics.map(
                    (topic) => TopicListTile(
                      topic: topic,
                      onTap: () => context.push('/topic/${topic.id}'),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
