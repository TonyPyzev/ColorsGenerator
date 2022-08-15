import 'package:colorsgenerator/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

/// Application main class
class ColorsGeneratorApp extends StatelessWidget {
  final String _title = 'Colors Generator';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomeScreen(),
    );
  }
}
