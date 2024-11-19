import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/Custtom_List_view_like.dart';
import 'package:booly_app/Features/searsh/presentation/Widgets/Text_Faild_Widget.dart';
import 'package:booly_app/Features/searsh/presentation/Widgets/searsh_ListView.dart';
import 'package:flutter/material.dart';

class SearshViewBodyWidget extends StatelessWidget {
  const SearshViewBodyWidget({super.key,required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextFit(),
          ),
        ),
        Expanded(child: SearshListview(bookModel: bookModel,))
      ],
    );
  }
}
