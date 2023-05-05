import 'package:flutter/material.dart';

import '../../widgets/item_list_widget.dart';

class HighPerformancePage extends StatelessWidget {
  const HighPerformancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('High Performance'),
        automaticallyImplyLeading: true,
      ),
      body: ListView.builder(
        itemCount: 10000,
        itemBuilder: (BuildContext context, int index) {
          return ItemListWidget(
            index: index,
          );
        },
      ),
    );
  }
}
