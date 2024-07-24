import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/core/widget/custem_button.dart';
import 'package:flutter/material.dart';

class action_button extends StatelessWidget {
  const action_button({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Expanded(
            child: custem_buttom(
              topleft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(0),
              topRight: Radius.circular(0),
              ontap: () {},
              title: '190' r'$',
              textStyle: Style.button25,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Expanded(
            child: custem_buttom(
              color: Color.fromARGB(255, 1, 117, 171),
              topleft: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
              ontap: () {},
              title: 'Free',
              textStyle: Style.button25,
            ),
          ),
        ],
      ),
    );
  }
}
