import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key, required this.favoriteList})
      : super(key: key);
  final List<Meal> favoriteList;
  @override
  Widget build(BuildContext context) {
    if (favoriteList.isEmpty) {
      return Center(child: Text("Você não tem refeições favoritas."));
    }
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteList[index].title),
          );
        },
        itemCount: favoriteList.length,
      ),
    );
  }
}
