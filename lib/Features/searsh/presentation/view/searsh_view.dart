import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/searsh/presentation/Widgets/searsh_view_body_widget.dart';
import 'package:flutter/material.dart';

class SearshView extends StatelessWidget {
  const SearshView({super.key,required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearshViewBodyWidget(bookModel: bookModel,),
    );
  }
}
