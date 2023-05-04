import 'package:flutter/material.dart';

import '../widgets/card_option_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Profiling and performance',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CardOptionWidget(
              urlImage: 'assets/images/negativo.png',
              title: 'Low performance',
              pageName: 'lowPerformance',
            ),
            CardOptionWidget(
              urlImage: 'assets/images/positivo.png',
              title: 'High performance',
              pageName: 'highPerformance',
            ),
            CardOptionWidget(
              urlImage: 'assets/images/tips.png',
              title: 'Tips',
              pageName: 'tips',
            )
          ],
        ),
      ),
    );
  }
}
