import 'package:flutter/material.dart';

import './home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PGS Corticella Calcio',
      theme: ThemeData(
        primaryColor: Colors.blue[600],
      ),
      home: HomeScreen(),
    );
  }
}
