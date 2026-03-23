import 'package:flutter/material.dart';
import '../widgets/color_box.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Tap Demo'),
      ),
      body: const Center(
        child: ColorBox(),
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