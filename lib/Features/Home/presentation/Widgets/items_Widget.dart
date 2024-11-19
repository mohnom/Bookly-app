import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/bookly_Rating.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/cateygry_widged.dart';
import 'package:booly_app/constants.dart';
import 'package:booly_app/core/utils/Styles.dart';
import 'package:booly_app/core/utils/assets.dart';
import 'package:booly_app/core/utils/router_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.KBooksView,extra: bookModel );
      },
      child: Container(
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CateygryCustomListViewWidget(
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail?? '',
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo?.title??'',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo?.authors?[0]??'',
                      style: Styles.textStyle14,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRatings(rating:20,count: bookModel.volumeInfo?.pageCount??0,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
