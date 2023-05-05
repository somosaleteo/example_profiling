import 'package:flutter/material.dart';

class NetworkPage extends StatelessWidget {
  const NetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Network'),
        automaticallyImplyLeading: true,
      ),
      // body: Container(),
      body: Column(
        children: [
          Image.network('https://cdn.pixabay.com/photo/2023/04/24/03/16/camping-7947056_1280.jpg'),
          Image.network('https://cdn.pixabay.com/photo/2023/05/01/13/12/tree-7963026_1280.jpg'),
        ],
      ),
    );
  }
}