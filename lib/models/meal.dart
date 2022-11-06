import 'package:meals/models/enums/complexity.dart';
import 'package:meals/models/enums/cost.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simples';
        break;
      case Complexity.medium:
        return 'Média';
        break;
      case Complexity.difficult:
        return 'Difícil';
        break;
      default:
        return 'Desconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Barato';
        break;
      case Cost.cheap:
        return 'Normal';
        break;
      case Cost.expensive:
        return 'Caro';
        break;
      default:
        return 'Desconhecido';
    }
  }
}
