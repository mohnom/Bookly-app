import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custtom_List_view_like.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilerBooksSceashen extends StatelessWidget {
  const SimilerBooksSceashen({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('You can also like',
            style: Styles.textStyle14
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        LikeCustomListView(bookModel: bookModel,),
      ],
    );
  }
}
