enum TopicDifficulty {
  beginner,
  intermediate,
  advanced,
}

class Topic {
  const Topic({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.difficulty,
    required this.tags,
    required this.category,
    required this.docUrl,
    this.codeSnippetPlaceholder,
  });

  final String id;
  final String title;
  final String shortDescription;
  final TopicDifficulty difficulty;
  final List<String> tags;
  final String category;
  final String docUrl;
  final String? codeSnippetPlaceholder;

  String get difficultyLabel {
    switch (difficulty) {
      case TopicDifficulty.beginner:
        return 'Beginner';
      case TopicDifficulty.intermediate:
        return 'Intermediate';
      case TopicDifficulty.advanced:
        return 'Advanced';
    }
  }
}
