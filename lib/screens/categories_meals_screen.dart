import 'package:flutter/material.dart';
import 'package:nav_app/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            category.title,
          ),
          backgroundColor: category.color,
        ),
        body: Center(child: Text('Receitas por Categoria ${category.id}')));
  }
}
