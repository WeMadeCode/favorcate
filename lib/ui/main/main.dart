import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "/";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("hello world"),
      ),
    );
  }
}