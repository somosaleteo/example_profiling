import 'dart:math';

import 'package:flutter/material.dart';

class Tip5 extends StatefulWidget {
  const Tip5({Key? key}) : super(key: key);

  @override
  State<Tip5> createState() => _Tip5State();
}

class _Tip5State extends State<Tip5> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int counter = 0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(Icons.sports_handball_rounded),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) => Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(
              360 * _controller.value * (pi / 180.0),
            ),
          child: CounterWidget(counter: counter),
        ),
      ),
    );
  }

  void _onPressed() {
    setState(() {
      counter++;
    });

    _controller.forward(from: 0.0);
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    print('Building *CounterWidget*');

    return Center(
      child: Text(
        counter.toString(),
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.apply(fontWeightDelta: 3, color: Colors.black),
      ),
    );
  }
}
