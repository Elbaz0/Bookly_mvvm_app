import 'package:flutter/material.dart';

class Animation_builder_widget extends StatelessWidget {
  const Animation_builder_widget({
    super.key,
    required this.slidanimation,
  });

  final Animation<Offset> slidanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidanimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidanimation,
          child: Text(
            'Read free book',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        );
      },
    );
  }
}
