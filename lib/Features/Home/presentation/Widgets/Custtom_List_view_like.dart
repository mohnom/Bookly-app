import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/cateygry_widged.dart';
import 'package:booly_app/Features/Home/presentation/manger/Similer_Cubite/similer_cubite_cubit.dart';
import 'package:booly_app/core/utils/router_app.dart';
import 'package:booly_app/core/widget/Custom_Loding.dart';
import 'package:booly_app/core/widget/Error_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LikeCustomListView extends StatelessWidget {
  const LikeCustomListView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerCubiteCubit, SimilerCubiteState>(
      builder: (context, state) {
        if (state is SimilerCubitesucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: (){
                       GoRouter.of(context).push(RouterApp.KBooksView,extra: state.books[index] );
                    },
                    child: CateygryCustomListViewWidget(
                        imageUrl:
                            state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                                ''),
                  ),
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilerCubiteFailler) {
          return ErrorsWidget(
            errMessege: state.errMessage,
          );
        } else {
          return CustomLoding();
        }
      },
    );
  }
}
