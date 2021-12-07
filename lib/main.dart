import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/route/favorcate_router.dart';
import 'ui/shared/size_fit.dart';

void main() {
  // Provider -> ViewModel/Provider/Consumer(Selector)
  runApp(ChangeNotifierProvider(
    create: (ctx) => MealViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 对SizeFit进行初始化
    SizeFit.initialize();
    return MaterialApp(
      title: '美食广场',
      // 主题
      theme: AppTheme.norTheme,
      // 路由
      initialRoute: FavorcateRouter.initialRoute,
      routes: FavorcateRouter.routes,
      onGenerateRoute: FavorcateRouter.generateRoute,
      onUnknownRoute: FavorcateRouter.unknownRoute,
    );
  }
}
