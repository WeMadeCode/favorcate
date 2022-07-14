import 'package:favorcate/ui/pages/favor/favor_screen.dart';
import 'package:favorcate/ui/pages/home/home_screen.dart';
import 'package:flutter/material.dart';

final pages = [HomeScreen(), FavorScreen()];

final items = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
  BottomNavigationBarItem(icon: Icon(Icons.star), label: "收藏"),
];
