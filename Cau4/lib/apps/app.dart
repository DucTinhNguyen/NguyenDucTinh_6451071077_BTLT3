import 'package:flutter/material.dart';
import '../views/home_screen.dart';

class TapCounterApp extends StatelessWidget {
  const TapCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}