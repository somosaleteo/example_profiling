import 'package:flutter/material.dart';

import '../widgets/card_option_widget.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<Map<String, String>> listOptions = [
    {
      'urlImage': 'assets/images/negativo.png',
      'title': 'Low performance',
      'pageName': 'lowPerformance',
    },
    {
      'urlImage': 'assets/images/positivo.png',
      'title': 'High performance',
      'pageName': 'highPerformance',
    },
    {
      'urlImage': 'assets/images/red.png',
      'title': 'Network',
      'pageName': 'network',
    },
    {
      'urlImage': 'assets/images/tips.png',
      'title': 'Tips',
      'pageName': 'tips',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Text(
              'Profiling and performance',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: listOptions.length,
              itemBuilder: (BuildContext context, int index) {
                return CardOptionWidget(
                  urlImage: listOptions[index]['urlImage'] ?? '',
                  title: listOptions[index]['title'] ?? '',
                  pageName: listOptions[index]['pageName'] ?? '',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
