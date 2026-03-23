import 'package:flutter/material.dart';

class PointerBox extends StatefulWidget {
  const PointerBox({super.key});

  @override
  State<PointerBox> createState() => _PointerBoxState();
}

class _PointerBoxState extends State<PointerBox> {
  double _x = 0;
  double _y = 0;

  void _updatePosition(PointerEvent event) {
    setState(() {
      _x = event.localPosition.dx;
      _y = event.localPosition.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'X: ${_x.toStringAsFixed(1)}, Y: ${_y.toStringAsFixed(1)}',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        Listener(
          onPointerDown: _updatePosition,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.grey[300],
            alignment: Alignment.center,
            child: const Text('Tap anywhere here'),
          ),
        ),
      ],
    );
  }
}