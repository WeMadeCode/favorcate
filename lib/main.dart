import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';

import 'core/route/router.dart';
import 'ui/shared/size_fit.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SizeFit.initialize();

    return MaterialApp(
      title: '美食广场',
      // 主题
      theme: AppTheme.norTheme,
      initialRoute: Router.initialRoute,
      routes: Router.routes,
      onGenerateRoute: Router.generateRoute,
      onUnknownRoute: Router.unknownRoute,
    );
  }
}
