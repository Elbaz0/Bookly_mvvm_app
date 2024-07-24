import 'package:bookly_app/Features/home/presentation/views/widget/item_best_seller.dart';
import 'package:flutter/material.dart';

class list_view_book_inSearchView extends StatelessWidget {
  const list_view_book_inSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const item_best_seller();
      },
    );
  }
}
