import 'package:flutter/material.dart';

class Tip3 extends StatefulWidget {
  const Tip3({Key? key}) : super(key: key);

  @override
  State<Tip3> createState() => _Tip3State();
}

class _Tip3State extends State<Tip3> {
  bool showCircle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: showCircle ? circle() : square(),
            ),
            ElevatedButton(
              onPressed: () => setState(() => showCircle = !showCircle),
              child: Text("Let's do it!"),
            )
          ],
        ),
      ),
    );
  }

  Widget square() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.orange,
    );
  }

  Widget circle() {
    return Container(
      width: 100,
      height: 100,
      child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          color: Colors.amber,

      ),
    );
  }
}
