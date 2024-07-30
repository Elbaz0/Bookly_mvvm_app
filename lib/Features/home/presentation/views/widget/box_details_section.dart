import 'package:bookly_app/Features/home/presentation/views/widget/Book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/action_button.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custem_item.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class box_details_section extends StatelessWidget {
  const box_details_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.28,
          child: const custem_item(
            imageUrl: '',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Text(
            'The Book',
            style: Style.title.copyWith(fontSize: 30),
          ),
        ),
        Text(
          'The Book d',
          style: Style.title.copyWith(color: Colors.white.withOpacity(.75)),
        ),
        const SizedBox(
          height: 10,
        ),
        const Book_rating(),
        const SizedBox(
          height: 32,
        ),
        const action_button(),
      ],
    );
  }
}
