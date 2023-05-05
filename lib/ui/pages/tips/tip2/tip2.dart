import 'dart:math';

import 'package:flutter/material.dart';

class Tip2 extends StatefulWidget {
  const Tip2({Key? key}) : super(key: key);

  @override
  State<Tip2> createState() => _Tip2State();
}

class _Tip2State extends State<Tip2> {
  Random _random = Random();

  @override
  Widget build(BuildContext context) {
    print('Building *Tip2*');

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(Icons.refresh),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                DateTime.now().toString().substring(10).split('.').first,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.apply(color: Colors.black, fontWeightDelta: 3),
              ),
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                color: _getRandomColor(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color _getRandomColor() {
    return Colors.primaries[_random.nextInt(30) % Colors.primaries.length];
  }

  void _onPressed() {
    setState(() {});
  }
}
