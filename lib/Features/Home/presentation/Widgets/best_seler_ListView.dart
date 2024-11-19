import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/items_Widget.dart';
import 'package:booly_app/Features/Home/presentation/manger/Newsed_Books_Cubite/newsed_books_cubit.dart';
import 'package:booly_app/core/widget/Custom_Loding.dart';
import 'package:booly_app/core/widget/Error_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSelerListview extends StatelessWidget {
  const BestSelerListview({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsedBooksCubit, NewsedBooksState>(
        builder: (context, state) {
      if (state is NewsedBooksSucsses) {
        return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical:8 ),
                child: ItemsWidget(bookModel: state.books[index],),
              );
            });
      } else if (state is NewsedBooksFaulled) {
        return ErrorsWidget(errMessege: state.errMessage);
      } else {
        return CustomLoding();
      }
    });
  }
}
