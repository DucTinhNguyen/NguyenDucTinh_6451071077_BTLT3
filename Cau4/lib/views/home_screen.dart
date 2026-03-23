import 'package:flutter/material.dart';
import '../widgets/tap_counter.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Counter'),
      ),
      body: const Center(
        child: TapCounter(),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          AppText.author,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}