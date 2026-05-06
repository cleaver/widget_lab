import 'package:flutter/material.dart';

class Day01ProfileHeaderScreen extends StatelessWidget {
  const Day01ProfileHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Day 1: Profile Header Card')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: EdgeInsets.all(16),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/PmISyaru.jpg'),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Maya Thompson',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Vegetarian Meal Curator',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('24 Recipes'),
                        Text('12 Favourites'),
                        Text('4.8 *'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                          ),
                          child: Text('Follow'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                          ),
                          child: Text('View meals'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Text('About:', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8),
            Text('Builds simple, health weekday meals with fast prep time.'),
          ],
        ),
      ),
    );
  }
}
