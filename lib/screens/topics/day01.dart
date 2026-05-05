import 'package:flutter/material.dart';

class Day01ProfileHeaderScreen extends StatelessWidget {
  const Day01ProfileHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Day 1: Profile Header Card')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text('Build avatar, name, bio actions here'),
      ),
    );
  }
}
