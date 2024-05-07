import 'package:flutter/material.dart';
import 'package:meal_app/main.dart';
import 'package:meal_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(meal.imageUrl,
                  height: 300, width: double.infinity, fit: BoxFit.cover),
                  const SizedBox(height: 14,),
                  Text('Ingredients',textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 14,),
                  for (final ingredient in meal.ingredients)
                  Text(ingredient,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),),
                  SizedBox(height: 24,),
                  Text('Steps',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 14,),
                  for (final step in meal.steps)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    child: Text(step,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),),
                  ),
            ],
          ),
        ));
  }
}
