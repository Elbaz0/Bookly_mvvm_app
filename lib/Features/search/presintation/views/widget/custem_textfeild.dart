import 'package:flutter/material.dart';

class custem_textfeild extends StatelessWidget {
  const custem_textfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'search',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
      ),
    );
  }
}
