import 'package:booly_app/Features/Home/presentation/Widgets/Custom_List_view.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/best_seler_ListView.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/custom_appbar.dart';
import 'package:booly_app/Features/Home/presentation/Widgets/items_Widget.dart';
import 'package:booly_app/constants.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Custom_AppBar(),
              CustomListView(),
              SizedBox(
                height: 40,
              ),
              Text('Best Seller', style: Styles.textStyle20),
            ],
          ),
        )),
        SliverFillRemaining(
          child: BestSelerListview(),
        )
      ],
    );
  }
}
