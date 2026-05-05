# Widget Lab

Single Flutter app for widget practice.
Add one route/screen per exercise.

Goal each day: understand why selected widgets are right tools for screen.

## Setup

Keep one single widget lab app and add a new route or screen for each
exercise, because Flutter's widget catalog is organized by families and
DevTools lets you inspect widget tree and properties of what you build.

Reference: <https://docs.flutter.dev/ui/widgets/basics>

Session routine:

- Build screen from scratch first.
	<https://docs.flutter.dev/ui/widgets>
- Open relevant widget catalog pages for unfamiliar widgets.
	<https://docs.flutter.dev/reference/widgets>
- Run DevTools and inspect widget tree, layout, and properties after screen
	works.
	<https://docs.flutter.dev/learn/pathway/tutorial/devtools>
- Check Academind resources repo only after trying on your own.
	<https://github.com/orgs/academind/repositories>

## Week 1

Focus on layout fluency first.

Reference: <https://docs.flutter.dev/ui/widgets/basics>

### Day 1: Profile header card

Build profile screen with avatar, name, bio, and action buttons.

- Widgets: `Scaffold`, `AppBar`, `Padding`, `Column`, `Row`, `CircleAvatar`,
	`Text`, `IconButton`, `ElevatedButton`, `SizedBox`, `Card`.
	<https://docs.flutter.dev/ui/widgets/material>
- Skill goal: spacing, alignment, nesting `Row` inside `Column`, and avoiding
	overuse of `Container`.
	<https://docs.flutter.dev/ui/widgets/basics>

### Day 2: Settings screen

Build settings page with grouped options.

- Widgets: `ListView`, `ListTile`, `SwitchListTile`, `CheckboxListTile`,
	`Divider`, `Icon`, `Text`.
	<https://docs.flutter.dev/ui/widgets>
- Skill goal: list-based UI, reusable rows, and when `ListTile` is better than
	manual `Row` layouts.
	<https://docs.flutter.dev/ui/widgets/material>

### Day 3: Category grid

Build meals-style category screen with tappable colored tiles.

- Widgets: `GridView`, `InkWell` or `GestureDetector`, `Container`,
	`BoxDecoration`, `Center`, `Text`.
	<https://docs.flutter.dev/ui/widgets>
- Skill goal: grids, tap handling, decoration, and visual hierarchy.

### Day 4: Scrollable detail page

Build detail page with image placeholder, title, ingredients, and steps.

- Widgets: `SingleChildScrollView` or `ListView`, `Column`, `Image`, `Text`,
	`Chip`, `Wrap`, `Padding`.
	<https://docs.flutter.dev/ui/widgets/material>
- Skill goal: scrollable content, long-page composition, and nested sections.

### Day 5: Inspector day

Revisit Days 1-4 and inspect all in DevTools.

- Focus on: why `Expanded`, padding, alignment, and scroll widgets behave as
	they do.
	<https://docs.flutter.dev/learn/pathway/tutorial/devtools>
- Deliverable: one sentence per screen explaining top-level layout structure.

### Day 6-7: Mini challenge

Rebuild meals categories screen without notes, then add one twist:

- favorite badges
- longer titles
- different tile shape

Reference: <https://github.com/shunjid/quickmeal>

## Week 2

Shift from static layout to navigation and state.

Reference: <https://github.com/orgs/academind/repositories>

### Day 8: Bottom tabs app shell

- Widgets: `DefaultTabController`, `TabBar`, `TabBarView` or
	`BottomNavigationBar`, `Scaffold`, `AppBar`.
	<https://docs.flutter.dev/ui/widgets/material>
- Skill goal: tab patterns, when to swap screens vs content.

### Day 9: Side drawer app shell

- Widgets: `Drawer`, `ListTile`, `Navigator`, `Scaffold`, `SafeArea`.
	<https://docs.flutter.dev/ui/widgets>
- Skill goal: route-based navigation vs tab-based navigation.

### Day 10: Meals list to detail

- Widgets: `ListView.builder`, `Card`, `InkWell`, `Navigator`,
	`MaterialPageRoute`, `Hero` optional.
	<https://docs.flutter.dev/ui/widgets/material>
- Skill goal: list building, passing data, and screen transitions.

### Day 11: Filter screen

- Widgets: `SwitchListTile`, `Column`, `ListView`, `Text`, `ElevatedButton`.
	<https://docs.flutter.dev/ui/widgets/material>
- Skill goal: local state updates and lifting state upward.

### Day 12: Favorites state

- Widgets/concepts: `StatefulWidget`, callbacks, `IconButton`, conditional
	rendering, `setState`.
	<https://docs.flutter.dev/ui/widgets/basics>
- Skill goal: understand app state at small-project level before state
	libraries.

### Day 13-14: Mini challenge

Combine category grid, meals list, detail page, favorites, and filters into
one app shell.

Fallback reference: <https://github.com/academind>

## Week 3

Focus on polish, forms, adaptation, and widget recognition.

Reference: <https://docs.flutter.dev/ui/widgets>

### Day 15: Add-meal form

- Widgets: `Form`, `TextFormField`, `DropdownButtonFormField`,
	`TextEditingController`, `ElevatedButton`.
	<https://docs.flutter.dev/ui/widgets/material>
- Skill goal: input handling, validation basics, form structure.

### Day 16: Search and filter bar

- Widgets: `TextField`, `InputDecoration`, `Chip` or `FilterChip`, `Wrap`,
	`ListView`.
	<https://docs.flutter.dev/ui/widgets>
- Skill goal: interactive input driving UI updates.

### Day 17: Responsive screen

- Widgets: `LayoutBuilder`, `MediaQuery`, `Expanded`, `Flexible`, `Wrap`.
	<https://docs.flutter.dev/ui/widgets/basics>
- Skill goal: responsive thinking for tablet and desktop.

### Day 18: Async/loading states

- Widgets: `FutureBuilder`, `CircularProgressIndicator`, conditional widgets,
	empty-state UI.
	<https://docs.flutter.dev/ui/widgets>
- Skill goal: design transition states, not only loaded state.

### Day 19: Dialogs and feedback

- Widgets: `showDialog`, `AlertDialog`, `SnackBar`, `ScaffoldMessenger`,
	`IconButton`.
	<https://docs.flutter.dev/ui/widgets/material>
- Skill goal: feedback patterns and transient UI.

### Day 20-21: Final rebuild

Build "Meal Planner Lite" using notes + widget catalog.

Include:

- Categories screen.
- Meals list.
- Meal detail.
- Favorites.
- Filters.
- One form or search feature.

Reference: <https://docs.flutter.dev/reference/widgets>

## Widgets to Master

### Structure

`Scaffold`, `AppBar`, `SafeArea`, `Drawer`

Reference: <https://docs.flutter.dev/ui/widgets/material>

### Layout

`Row`, `Column`, `Expanded`, `Flexible`, `Padding`, `SizedBox`, `Container`,
`Center`, `Wrap`

Reference: <https://docs.flutter.dev/ui/widgets/basics>

### Scrolling

`ListView`, `GridView`, `SingleChildScrollView`

Reference: <https://docs.flutter.dev/ui/widgets>

### Interaction

`InkWell`, `GestureDetector`, `IconButton`, `ElevatedButton`, `TextButton`

Reference: <https://docs.flutter.dev/ui/widgets/material>

### Navigation

`Navigator`, `MaterialPageRoute`, tabs, drawer patterns

Reference: <https://docs.flutter.dev/ui/widgets/material>

### Forms

`TextField`, `TextFormField`, `Form`, `SwitchListTile`, `CheckboxListTile`,
dropdown widgets

Reference: <https://docs.flutter.dev/ui/widgets/material>

### State

`StatefulWidget`, callbacks, conditional rendering, `setState`

Reference: <https://docs.flutter.dev/ui/widgets/basics>

### Debugging

DevTools, Widget Inspector, property editor

Reference: <https://docs.flutter.dev/learn/pathway/tutorial/devtools>

## Resource Stack

- Official widget catalog:
	<https://docs.flutter.dev/ui/widgets>
- Flutter widget index:
	<https://docs.flutter.dev/reference/widgets>
- Material widget catalog:
	<https://docs.flutter.dev/ui/widgets/material>
- DevTools and inspector:
	<https://docs.flutter.dev/tools/devtools>
- Academind public resources:
	<https://github.com/academind>
