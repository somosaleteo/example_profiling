import 'package:flutter/material.dart';
import 'dart:math' as math;
class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length],
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
    );
  }
}
