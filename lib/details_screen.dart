import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> recipe;

  const DetailsScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ingredients = List<String>.from(recipe['ingredients']);
    final instructions = recipe['instructions'];

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Ingredients',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...ingredients.map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text('• $item'),
                )),
            const SizedBox(height: 20),
            Text(
              'Instructions',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(instructions),
          ],
        ),
      ),
    );
  }
}
