import 'package:flutter/material.dart';
import 'package:meals/components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreens extends StatelessWidget {
  const CategoriesScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vamos Cozinhar')),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //cada elemnto tem extenção max de 200
          childAspectRatio: 3 / 2, // porporçao de cada de elemento do view
          crossAxisSpacing: 20, //espaço do eixo cruzado
          mainAxisSpacing: 20,
        ),
        children: dummyCategories.map((cat) {
          return CategoryItem(category: cat);
        }).toList(),
      ),
    );
  }
}
