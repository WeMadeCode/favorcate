import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal_screen.dart';
import 'package:flutter/material.dart';

class HomeCategoryItem extends StatelessWidget {
  final CategoryModel _category;

  HomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
            gradient:LinearGradient(colors: [bgColor.withOpacity(.5), bgColor])
        ),
        alignment: Alignment.center,
        child: Text(
          _category.title,
          style: Theme.of(context)
              .textTheme
              .display2
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(MealScreen.routeName, arguments: _category);
      },
    );
  }
}
