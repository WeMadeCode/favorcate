

import 'package:favorcate/ui/main/main_screen.dart';
import 'package:favorcate/ui/pages/meal/meal_screen.dart';
import 'package:flutter/material.dart';

class Router {
  static final String initialRoute = MainScreen.routeName;
  
  static final Map<String, WidgetBuilder> routes = {
    MainScreen.routeName: (ctx) => MainScreen(),
    MealScreen.routeName: (ctx) => MealScreen(),
  };

  // 自己扩展
  static final RouteFactory generateRoute = (settings) {
    return null;
  };
  
  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
