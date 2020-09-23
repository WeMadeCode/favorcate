import 'package:favorcate/ui/pages/favor/favor_screen.dart';
import 'package:favorcate/ui/pages/home/home_screen.dart';
import 'package:flutter/material.dart';

final List<Widget> pages = [
  HomeScreen(),
  FavorScreen()
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
      title: Text("收藏"),
      icon: Icon(Icons.star)
  ),
];