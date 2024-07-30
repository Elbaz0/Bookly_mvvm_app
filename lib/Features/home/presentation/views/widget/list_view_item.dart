import 'package:bookly_app/Features/home/presentation/manger/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custem_item.dart';
import 'package:bookly_app/core/widget/custom_failure.dart';
import 'package:bookly_app/core/widget/custom_loadingindecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class list_view_item extends StatelessWidget {
  const list_view_item({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: custem_item(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return custom_failure(MsgErro: state.errMessage);
      } else {
        return custom_loading_indecator();
      }
    });
  }
}
