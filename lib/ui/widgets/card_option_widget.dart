import 'package:flutter/material.dart';

class CardOptionWidget extends StatelessWidget {
  const CardOptionWidget({
    super.key,
    required this.urlImage,
    required this.title,
    required this.pageName,
  });
  final String urlImage;
  final String title;
  final String pageName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, pageName),
      child: Card(
        margin: const EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                urlImage,
                width: 90,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
