import 'package:flutter/material.dart';

class Tip1 extends StatefulWidget {
  const Tip1({Key? key}) : super(key: key);

  @override
  State<Tip1> createState() => _Tip1State();
}

class _Tip1State extends State<Tip1> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: Icon(Icons.add),
      ),
      body: Stack(
        children: [
          Positioned.fill(child: BackgroundWidget()),
          Center(
            child: Text(
              _counter.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.apply(color: Colors.white, fontWeightDelta: 3),
            ),
          ),
        ],
      ),
    );
  }

  void _onPressed() {
    setState(() {
      _counter++;
    });
  }
}

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Building *BackgroundWidget*');

    return Image.network(
      'https://images.pexels.com/photos/534285/pexels-photo-534285.jpeg',
      fit: BoxFit.cover,
    );
  }
}
