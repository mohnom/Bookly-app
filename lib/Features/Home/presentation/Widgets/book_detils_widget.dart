import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custom_Bottom.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custom_Buttom_free.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custom_book_appbar.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custtom_List_view_like.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Similler_Books_Sceashan.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/bookly_Rating.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/cateygry_widged.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/infromation_Book_Widget.dart';
import 'package:booly_app/constants.dart';
import 'package:booly_app/core/utils/assets.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetilsWidget extends StatelessWidget {
  const BookDetilsWidget({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SafeArea(child: CustomBookAppbar()),
                 infromationsBooks(bookModel: bookModel,),
                const SizedBox(
                  height: 25,
                ),
                SimilerBooksSceashen(bookModel: bookModel,)
              ],
            ),
          ),
        )
      ],
    );
  }
}
