import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class custem_item extends StatelessWidget {
  const custem_item({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 2.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage(imageData.test), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
