import 'package:flutter/material.dart';
import '../widgets/tappable_box.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(AppText.tapMessage),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
      ),
      body: Center(
        child: TappableBox(
          onTap: () => _showSnackBar(context),
        ),
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