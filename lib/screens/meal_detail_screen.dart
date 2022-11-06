import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    _createSectionTitle(BuildContext context, String title) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      );
    }

    Widget _createSectionContainer(Widget child) {
      return Container(
        width: 320,
        height: 220,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: child,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(meal.imageUrl, fit: BoxFit.cover),
            ),
            _createSectionTitle(context, 'Ingredientes'),
            _createSectionContainer(
              ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: (ctx, i) {
                    return Card(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(meal.ingredients[i])),
                        color: Theme.of(context).colorScheme.secondary);
                  }),
            ),
            _createSectionTitle(context, 'Passos'),
            _createSectionContainer(
              ListView.builder(
                  itemCount: meal.steps.length,
                  itemBuilder: (ctx, i) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text(
                              '${i + 1}',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(meal.steps[i]),
                        ),
                        Divider()
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
