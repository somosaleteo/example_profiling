import 'package:flutter/material.dart';
import 'dart:math' as math;
class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      child: SizedBox(
        height: 60,
        child: Center(
          child: Text(
            'Item $index',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
