import 'package:bookly_app/Features/home/presentation/views/widget/custem_item.dart';
import 'package:flutter/material.dart';

class list_view_item_inDetails extends StatelessWidget {
  const list_view_item_inDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: custem_item(
              imageUrl: '',
            ),
          );
        },
      ),
    );
  }
}
