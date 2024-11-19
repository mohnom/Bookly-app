import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/book_detils_widget.dart';
import 'package:booly_app/Features/Home/presentation/manger/Similer_Cubite/similer_cubite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetilsView extends StatefulWidget {
  const BookDetilsView({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  State<BookDetilsView> createState() => _BookDetilsViewState();
}

class _BookDetilsViewState extends State<BookDetilsView> {
  @override
  void initState() {
    BlocProvider.of<SimilerCubiteCubit>(context).SimilerCubiteState(Categry:widget.bookModel.volumeInfo?.categories?[0]?? '', );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetilsWidget(bookModel: widget.bookModel,),
    );
  }
}
