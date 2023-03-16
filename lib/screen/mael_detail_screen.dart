import 'package:flutter/material.dart';
import '../models/meal.dart';

class MaelDetailScreen extends StatelessWidget {
  const MaelDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              margin: EdgeInsets.all(8),
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Ingredientes',
                  style: Theme.of(context).textTheme.titleSmall),
            ),
            Container(
              width: 150,
              height: 150,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Text(meal.ingredients[index]),
                  );
                },
              ),
            )
          ],
        ));
  }
}
