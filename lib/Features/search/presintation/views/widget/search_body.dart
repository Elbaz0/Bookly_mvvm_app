import 'package:bookly_app/Features/search/presintation/views/widget/custem_textfeild.dart';
import 'package:bookly_app/Features/search/presintation/views/widget/list_view_book_inSearchView.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class search_view_body extends StatelessWidget {
  const search_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custem_textfeild(),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Search data :',
                style: Style.title,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(child: list_view_book_inSearchView()),
          ],
        ),
      ),
    );
  }
}
