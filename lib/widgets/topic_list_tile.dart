import 'package:flutter/material.dart';
import 'package:widget_lab/models/topic.dart';

class TopicListTile extends StatelessWidget {
  const TopicListTile({
    super.key,
    required this.topic,
    required this.onTap,
  });

  final Topic topic;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        title: Text(topic.title),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(topic.shortDescription),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: <Widget>[
                  Chip(
                    avatar: const Icon(Icons.signal_cellular_alt, size: 16),
                    label: Text(topic.difficultyLabel),
                    visualDensity: VisualDensity.compact,
                  ),
                  ...topic.tags.map(
                    (String tag) => Chip(
                      label: Text(tag),
                      visualDensity: VisualDensity.compact,
                      labelStyle: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
