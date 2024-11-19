import 'package:booly_app/Features/Home/presentation/Widgets/Custom_Bottom.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custom_book_appbar.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRatings extends StatelessWidget {
  const BookRatings({super.key,required this.count,required this.rating});
  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rate,
          color: Colors.yellow,
        ),
        Text(
         " $rating",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(' ($count)', style: Styles.textStyle14),
      ],
    );
  }
}
