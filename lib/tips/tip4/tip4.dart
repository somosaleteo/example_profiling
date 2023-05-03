import 'package:flutter/material.dart';

class Tip4 extends StatefulWidget {
  const Tip4({Key? key}) : super(key: key);

  @override
  State<Tip4> createState() => _Tip4State();
}

class _Tip4State extends State<Tip4> {
  final widgets = List.generate(
    20,
    (index) => Container(
      height: 200,
      color: Colors.primaries[index % Colors.primaries.length],
      child: ListTile(
        title: Text('Index: $index'),
      ),
    ),
  );

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(Icons.downhill_skiing_outlined),
      ),
      body: ListView(
        controller: _scrollController,
        children: widgets,
        itemExtent: 200,
      ),
    );
  }

  void _onPressed() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }
}
