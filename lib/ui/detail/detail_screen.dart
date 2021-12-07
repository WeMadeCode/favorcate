import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as MealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: Text(meal.title),
      ),
    );
  }
}
