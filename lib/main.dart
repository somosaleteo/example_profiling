import 'package:example_profiling/tips/tips_page.dart';
import 'package:example_profiling/ui/pages/example/high_performance_page.dart';
import 'package:example_profiling/ui/pages/example/low_performance_page.dart';
import 'package:example_profiling/ui/pages/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'home': (context) => const MyHomePage(),
        'lowPerformance': (context) => const LowePerformancePage(),
        'highPerformance': (context) => const HighPerformancePage(),
        'tips': (context) => const TipsPage(),
      },
      initialRoute: 'home',
    );
  }
}
