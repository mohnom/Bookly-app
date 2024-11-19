import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/items_Widget.dart';
import 'package:booly_app/Features/searsh/presentation/Widgets/Item_searsh.dart';
import 'package:flutter/material.dart';

class SearshListview extends StatelessWidget {
  const SearshListview({super.key,required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ItemSearsh(bookModel: bookModel,);
        });
  }
}
