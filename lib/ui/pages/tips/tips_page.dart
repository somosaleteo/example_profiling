import 'package:example_profiling/ui/pages/tips/tip1/tip1.dart';
import 'package:example_profiling/ui/pages/tips/tip2/tip2.dart';
import 'package:example_profiling/ui/pages/tips/tip4/tip4.dart';
import 'package:example_profiling/ui/pages/tips/tip5/tip5.dart';
import 'package:flutter/material.dart';

import 'tip3/tip3.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Tips'),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildGestureDetector(context, Tip1(), 'First tip'),
          _buildGestureDetector(context, Tip2(), 'Second tip'),
          _buildGestureDetector(context, Tip3(), 'Third tip'),
          _buildGestureDetector(context, Tip4(), 'Fourth tip'),
          _buildGestureDetector(context, Tip5(), 'Fifth tip'),
        ],
      ),
    );
  }

  GestureDetector _buildGestureDetector(
    BuildContext context,
    Widget page,
    String text,
  ) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
      ),
      child: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          color: Colors.purple,
          width: 300,
          height: 100,
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
