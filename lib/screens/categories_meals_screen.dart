import 'package:flutter/material.dart';
import 'package:nav_app/components/meal_item.dart';
import 'package:nav_app/data/dummy_data.dart';
import 'package:nav_app/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    //Return the meals by category
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            category.title,
          ),
          backgroundColor: category.color,
        ),
        body: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(categoryMeals[index]);
            }));
  }
}
