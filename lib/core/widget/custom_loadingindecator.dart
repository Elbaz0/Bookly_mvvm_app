import 'package:flutter/material.dart';

class custom_loading_indecator extends StatelessWidget {
  const custom_loading_indecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
