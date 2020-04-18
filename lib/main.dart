import 'package:flutter/material.dart';
import 'package:itgrouptesttask/ui/auth_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test Task',
      home:AuthPage(),
    );
  }
}