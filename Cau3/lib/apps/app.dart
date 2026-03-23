import 'package:flutter/material.dart';
import '../views/home_screen.dart';

class LongPressApp extends StatelessWidget {
  const LongPressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}