import 'package:booly_app/Features/Home/presentation/Widgets/cateygry_widged.dart';
import 'package:booly_app/Features/Home/presentation/manger/Featuired_Cubit/featuired_cubit_cubit.dart';
import 'package:booly_app/core/widget/Custom_Loding.dart';
import 'package:booly_app/core/widget/Error_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/router_app.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});
   
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuiredCubitCubit, FeatuiredCubitState>(
        builder: (context, state) {
      if (state is FeatuiredCubitSucssas) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: (){
                     GoRouter.of(context).push(RouterApp.KBooksView,extra:state.Books[index] );
                  },
                  child: CateygryCustomListViewWidget(
                    imageUrl: state.Books[index].volumeInfo?.imageLinks?.thumbnail?? '',
                  ),
                ),
              );
            },
            itemCount: state.Books.length,
          ),
        );
      } else if (state is FeatuiredCubitFailler) {
        return ErrorsWidget(errMessege: state.errMessage);
      } else {
        return CustomLoding();
      }
    });
  }
}
