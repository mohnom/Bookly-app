import 'dart:ffi';

import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custom_Bottom.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custom_Buttom_free.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/bookly_Rating.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/cateygry_widged.dart';
import 'package:booly_app/constants.dart';
import 'package:booly_app/core/utils/assets.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class infromationsBooks extends StatelessWidget {
  const infromationsBooks({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: CateygryCustomListViewWidget(
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail??''
              )
            ),
          ),
          Text(
            bookModel.volumeInfo?.title??'',
            style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
          ),
          Text(
             bookModel.volumeInfo?.authors![0]??'',
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 8,
          ),
          BookRatings(
            rating: 30,
            count: bookModel.volumeInfo?.pageCount??0,
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CustomBottom(),
                  CustomButtomFree(bookModel: bookModel,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
