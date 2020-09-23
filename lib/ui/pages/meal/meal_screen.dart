import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/material.dart';

import 'meal_content.dart';

class MealScreen extends StatelessWidget {

  static const String routeName = "/meal";

  @override
  Widget build(BuildContext context) {
    // 获取参数
    final category = ModalRoute.of(context).settings.arguments as CategoryModel;
    return Scaffold(
      appBar: AppBar(title:Text(category.title)),
      body: MealContent()
    );
  }
}