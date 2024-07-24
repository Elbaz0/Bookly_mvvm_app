import 'package:bookly_app/Features/home/presentation/views/widget/List_item_view_bestseller.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custem_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/list_view_item.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class home_body_view extends StatelessWidget {
  const home_body_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                custem_app_bar(),
                list_view_item(),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Best Seller',
                    style: Style.title,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: List_item_view_bestseller(),
            ),
          )
        ],
      ),
    );
  }
}
