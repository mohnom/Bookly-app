import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/cateygry_widged.dart';
import 'package:flutter/material.dart';

class ItemSearsh extends StatelessWidget {
  const ItemSearsh({super.key,required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bookModel.volumeInfo!.title!),
      leading: CateygryCustomListViewWidget(
          imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail??'',
          )
    );  
  }
}
