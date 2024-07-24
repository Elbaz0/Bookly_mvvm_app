import 'package:bookly_app/Features/home/presentation/views/widget/Book_detailes_custem_appBar.dart';

import 'package:bookly_app/Features/home/presentation/views/widget/box_details_section.dart';

import 'package:bookly_app/Features/home/presentation/views/widget/similar_box_section.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Book_detailes_view_body extends StatelessWidget {
  const Book_detailes_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                SafeArea(
                  child: Book_detailes_custem_appBar(),
                ),
                box_details_section(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                similar_box_section(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
