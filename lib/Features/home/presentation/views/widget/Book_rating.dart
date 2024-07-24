import 'package:flutter/material.dart';

class Book_rating extends StatelessWidget {
  const Book_rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        const Text(
          '4.8',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        Text('(2390)', style: TextStyle(color: Colors.white.withOpacity(.5)))
      ],
    );
  }
}
