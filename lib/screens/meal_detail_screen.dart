import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.network(meal.imageUrl, fit: BoxFit.cover),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text('Ingredientes',
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          Container(
            width: 200,
            height: 220,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (ctx, i) {
                  return Card(
                      child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Text(meal.ingredients[i])),
                      color: Theme.of(context).colorScheme.secondary);
                }),
          ),
        ],
      ),
    );
  }
}
