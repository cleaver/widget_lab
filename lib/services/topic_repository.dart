import 'package:widget_lab/models/topic.dart';

class TopicRepository {
  static const List<String> orderedCategories = <String>[
    'Setup',
    'Week 1',
    'Week 2',
    'Week 3',
    'Widgets to Master',
    'Resource Stack',
  ];

  static const List<Topic> topics = <Topic>[
    Topic(
      id: 'setup-routine',
      title: 'Session routine and workflow',
      shortDescription:
          'Build first, read docs for unfamiliar widgets, inspect in DevTools, then compare fallback resources.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['daily-flow', 'devtools', 'catalog'],
      category: 'Setup',
      docUrl: 'https://docs.flutter.dev/ui/widgets/basics',
      codeSnippetPlaceholder:
          'Keep one Widget Lab app. Add one route/screen per exercise. Focus on why chosen widgets fit screen.',
    ),
    Topic(
      id: 'setup-resources',
      title: 'Open references in order',
      shortDescription:
          'Widget catalog first, widget index for exact names, DevTools after screen works, Academind only after attempts.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['docs', 'inspector', 'fallback'],
      category: 'Setup',
      docUrl: 'https://docs.flutter.dev/reference/widgets',
      codeSnippetPlaceholder:
          'Routine: build from scratch -> inspect tree/layout/properties -> check external snapshots if blocked.',
    ),
    Topic(
      id: 'day-1',
      title: 'Day 1: Profile header card',
      shortDescription: 'Render Material icons with size and color.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>[
        'Scaffold',
        'AppBar',
        'Padding',
        'Column',
        'Row',
        'CircleAvatar',
      ],
      category: 'Week 1',
      docUrl: 'https://docs.flutter.dev/ui/widgets/basics',
      codeSnippetPlaceholder:
          'Goal: spacing, alignment, nesting Row in Column, and avoiding Container overuse.',
    ),
    Topic(
      id: 'day-2',
      title: 'Day 2: Settings screen',
      shortDescription:
          'Build grouped settings UI with higher-level list widgets.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>[
        'ListView',
        'ListTile',
        'SwitchListTile',
        'CheckboxListTile',
      ],
      category: 'Week 1',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder:
          'Goal: list-based composition and when ListTile beats manual Row.',
    ),
    Topic(
      id: 'day-3',
      title: 'Day 3: Category grid',
      shortDescription:
          'Build tappable meals-style grid with clear visual hierarchy.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['GridView', 'InkWell', 'GestureDetector', 'BoxDecoration'],
      category: 'Week 1',
      docUrl: 'https://docs.flutter.dev/ui/widgets',
      codeSnippetPlaceholder:
          'Goal: grid layout, tap handling, tile decoration, and hierarchy.',
    ),
    Topic(
      id: 'day-4',
      title: 'Day 4: Scrollable detail page',
      shortDescription:
          'Build long detail page with image placeholder, ingredients, and steps.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>[
        'SingleChildScrollView',
        'ListView',
        'Image',
        'Chip',
        'Wrap',
      ],
      category: 'Week 1',
      docUrl: 'https://docs.flutter.dev/ui/widgets',
      codeSnippetPlaceholder:
          'Goal: scroll behavior, long-page composition, nested content sections.',
    ),
    Topic(
      id: 'day-5',
      title: 'Day 5: Inspector day',
      shortDescription:
          'Revisit days 1-4 in DevTools and explain top-level layout per screen.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['DevTools', 'Inspector', 'Expanded', 'alignment'],
      category: 'Week 1',
      docUrl: 'https://docs.flutter.dev/tools/devtools',
      codeSnippetPlaceholder:
          'Deliverable: one sentence per screen describing layout structure.',
    ),
    Topic(
      id: 'day-6-7',
      title: 'Day 6-7: Mini challenge',
      shortDescription: 'Validate and save grouped input fields.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>['rebuild', 'variation', 'meals-grid'],
      category: 'Week 1',
      docUrl: 'https://github.com/shunjid/quickmeal',
      codeSnippetPlaceholder:
          'Rebuild categories from memory. Add twist: favorite badges, long titles, or tile shape change.',
    ),
    Topic(
      id: 'day-8',
      title: 'Day 8: Bottom tabs app shell',
      shortDescription: 'Compare tab navigation patterns and content swapping.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>[
        'DefaultTabController',
        'TabBar',
        'TabBarView',
        'BottomNavigationBar',
      ],
      category: 'Week 2',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder:
          'Goal: understand when to swap screens vs swap content.',
    ),
    Topic(
      id: 'day-9',
      title: 'Day 9: Side drawer app shell',
      shortDescription: 'Build same shell using Drawer-based navigation.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['Drawer', 'Navigator', 'ListTile', 'SafeArea'],
      category: 'Week 2',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder:
          'Goal: route-based navigation vs tab-based navigation.',
    ),
    Topic(
      id: 'day-10',
      title: 'Day 10: Meals list to detail',
      shortDescription:
          'Open detail screen from list taps and pass data cleanly.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>[
        'ListView.builder',
        'Card',
        'InkWell',
        'MaterialPageRoute',
      ],
      category: 'Week 2',
      docUrl: 'https://docs.flutter.dev/ui/widgets',
      codeSnippetPlaceholder:
          'Goal: list building, navigation args, and optional Hero transitions.',
    ),
    Topic(
      id: 'day-11',
      title: 'Day 11: Filter screen',
      shortDescription: 'Build toggle-based meal filter settings page.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>['SwitchListTile', 'ListView', 'Column', 'setState'],
      category: 'Week 2',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder:
          'Goal: local state updates and lifting state upward.',
    ),
    Topic(
      id: 'day-12',
      title: 'Day 12: Favorites state',
      shortDescription: 'Add favorite and unfavorite behavior across screens.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['StatefulWidget', 'callbacks', 'IconButton', 'setState'],
      category: 'Week 2',
      docUrl: 'https://docs.flutter.dev/ui/widgets/basics',
      codeSnippetPlaceholder:
          'Goal: understand small-app state before libraries.',
    ),
    Topic(
      id: 'day-13-14',
      title: 'Day 13-14: Week 2 mini challenge',
      shortDescription:
          'Combine categories, meals, detail, favorites, and filters in one shell.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['integration', 'navigation', 'state'],
      category: 'Week 2',
      docUrl: 'https://github.com/academind',
      codeSnippetPlaceholder:
          'If blocked: compare with Academind snapshots instead of stalling.',
    ),
    Topic(
      id: 'day-15',
      title: 'Day 15: Add-meal form',
      shortDescription: 'Build form for title, duration, and category.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>['Form', 'TextFormField', 'DropdownButtonFormField'],
      category: 'Week 3',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder:
          'Goal: input handling, validation basics, and structure.',
    ),
    Topic(
      id: 'day-16',
      title: 'Day 16: Search and filter bar',
      shortDescription: 'Drive list results from search text and chip filters.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>['TextField', 'InputDecoration', 'FilterChip', 'Wrap'],
      category: 'Week 3',
      docUrl: 'https://docs.flutter.dev/ui/widgets',
      codeSnippetPlaceholder:
          'Goal: interactive input that updates visible UI state.',
    ),
    Topic(
      id: 'day-17',
      title: 'Day 17: Responsive screen',
      shortDescription:
          'Adapt one existing screen for narrow and wide layouts.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>['LayoutBuilder', 'MediaQuery', 'Expanded', 'Flexible'],
      category: 'Week 3',
      docUrl: 'https://docs.flutter.dev/ui/widgets/basics',
      codeSnippetPlaceholder:
          'Goal: responsive thinking for tablet and desktop.',
    ),
    Topic(
      id: 'day-18',
      title: 'Day 18: Async and loading states',
      shortDescription: 'Simulate delay and show loading/success/empty states.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>[
        'FutureBuilder',
        'CircularProgressIndicator',
        'empty-state',
      ],
      category: 'Week 3',
      docUrl: 'https://docs.flutter.dev/ui/widgets',
      codeSnippetPlaceholder:
          'Goal: design for transition states, not only ready state.',
    ),
    Topic(
      id: 'day-19',
      title: 'Day 19: Dialogs and feedback',
      shortDescription: 'Add confirm dialogs, snackbars, and action feedback.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>[
        'showDialog',
        'AlertDialog',
        'SnackBar',
        'ScaffoldMessenger',
      ],
      category: 'Week 3',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder: 'Goal: transient UX patterns and user guidance.',
    ),
    Topic(
      id: 'day-20-21',
      title: 'Day 20-21: Final rebuild',
      shortDescription:
          'Build Meal Planner Lite using notes + widget catalog only.',
      difficulty: TopicDifficulty.advanced,
      tags: <String>[
        'capstone',
        'categories',
        'detail',
        'favorites',
        'filters',
      ],
      category: 'Week 3',
      docUrl: 'https://docs.flutter.dev/reference/widgets',
      codeSnippetPlaceholder:
          'Include categories, meals list, detail, favorites, filters, and one form or search.',
    ),
    Topic(
      id: 'master-structure',
      title: 'Master: structure widgets',
      shortDescription:
          'Scaffold, AppBar, SafeArea, Drawer should become default app-shell tools.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['Scaffold', 'AppBar', 'SafeArea', 'Drawer'],
      category: 'Widgets to Master',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder:
          'Practice by rebuilding one screen with two shell variants.',
    ),
    Topic(
      id: 'master-layout',
      title: 'Master: layout widgets',
      shortDescription:
          'Row, Column, Expanded, Flexible, Padding, SizedBox, Center, Wrap.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['Row', 'Column', 'Expanded', 'Flexible', 'Wrap'],
      category: 'Widgets to Master',
      docUrl: 'https://docs.flutter.dev/ui/widgets/basics',
      codeSnippetPlaceholder:
          'Practice: same UI built with poor vs clean spacing strategy.',
    ),
    Topic(
      id: 'master-scroll-interaction-state',
      title: 'Master: scroll, interaction, state',
      shortDescription:
          'ListView/GridView/SingleChildScrollView plus InkWell, buttons, and setState patterns.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>['ListView', 'GridView', 'InkWell', 'setState'],
      category: 'Widgets to Master',
      docUrl: 'https://docs.flutter.dev/ui/widgets',
      codeSnippetPlaceholder:
          'Practice: add one interaction + state change to each scrollable screen.',
    ),
    Topic(
      id: 'master-forms-debug',
      title: 'Master: forms and debugging',
      shortDescription:
          'Use Form fields, switches, and DevTools inspector/property editor confidently.',
      difficulty: TopicDifficulty.intermediate,
      tags: <String>['Form', 'TextFormField', 'SwitchListTile', 'DevTools'],
      category: 'Widgets to Master',
      docUrl: 'https://docs.flutter.dev/learn/pathway/tutorial/devtools',
      codeSnippetPlaceholder:
          'Practice: validate one form and inspect resulting widget tree.',
    ),
    Topic(
      id: 'resource-catalog',
      title: 'Resource: widget catalog',
      shortDescription:
          'Primary source for browsing widgets by family and role.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['official-docs', 'catalog'],
      category: 'Resource Stack',
      docUrl: 'https://docs.flutter.dev/ui/widgets',
      codeSnippetPlaceholder: 'Use first when planning screen composition.',
    ),
    Topic(
      id: 'resource-index',
      title: 'Resource: widget index',
      shortDescription: 'Fast lookup when widget name known.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['official-docs', 'index'],
      category: 'Resource Stack',
      docUrl: 'https://docs.flutter.dev/reference/widgets',
      codeSnippetPlaceholder: 'Use for exact API and class page jumps.',
    ),
    Topic(
      id: 'resource-material',
      title: 'Resource: material widgets',
      shortDescription: 'Ready-made Material components for app surfaces.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['material', 'components'],
      category: 'Resource Stack',
      docUrl: 'https://docs.flutter.dev/ui/widgets/material',
      codeSnippetPlaceholder: 'Use when building production-ready UI quickly.',
    ),
    Topic(
      id: 'resource-devtools',
      title: 'Resource: DevTools and inspector',
      shortDescription:
          'Inspect widget tree, properties, and layout behavior after build.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['DevTools', 'inspector', 'debugging'],
      category: 'Resource Stack',
      docUrl: 'https://docs.flutter.dev/tools/devtools',
      codeSnippetPlaceholder:
          'Use after screen works to learn why layout behaves as seen.',
    ),
    Topic(
      id: 'resource-academind',
      title: 'Resource: Academind snapshots',
      shortDescription: 'Fallback reference after genuine independent attempt.',
      difficulty: TopicDifficulty.beginner,
      tags: <String>['fallback', 'reference'],
      category: 'Resource Stack',
      docUrl: 'https://github.com/academind',
      codeSnippetPlaceholder:
          'Use only when blocked and compare patterns, not copy blindly.',
    ),
  ];

  const TopicRepository();

  List<String> get categories => orderedCategories;

  List<Topic> topicsByCategory(String category) {
    return topics.where((Topic topic) => topic.category == category).toList();
  }

  Topic? topicById(String id) {
    for (final Topic topic in topics) {
      if (topic.id == id) {
        return topic;
      }
    }
    return null;
  }
}
