import 'package:example_profiling/ui/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';

class LowePerformancePage extends StatelessWidget {
  const LowePerformancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Low Performance'),
        automaticallyImplyLeading: true,
      ),
      // body: Container(),
      body: SingleChildScrollView(
        child: Column(
          children: getItemList(),
        ),
      ),
    );
  }
}

List<Widget> getItemList() {
  List<Widget> itemlist = [];
  const int itemCount = 10000;

  for (var i = 0; i < itemCount; i++) {
    itemlist.add(ItemListWidget(index: i));
  }
  return itemlist;
}
