import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'styles/theme.dart';

void main() => runApp(MyShopMiniApp());

class MyShopMiniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MYSHOP',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: HomeScreen(),
    );
  }
}
