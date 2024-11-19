import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/data/models/book_model/volume_info.dart';
import 'package:booly_app/Features/Home/data/models/repo/home_repo.dart';
import 'package:booly_app/Features/Home/data/models/repo/home_repo_impl.dart';
import 'package:booly_app/Features/Home/presentation/manger/Similer_Cubite/similer_cubite_cubit.dart';
import 'package:booly_app/Features/Home/presentation/view/book_detils_view.dart';
import 'package:booly_app/Features/Home/presentation/view/home_view.dart';
import 'package:booly_app/Features/searsh/presentation/view/searsh_view.dart';
import 'package:booly_app/Features/splash/presentation/veiw/Splash_veiw.dart';
import 'package:booly_app/core/utils/api_serves.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
  BookModel bookModel=new BookModel( );
abstract class RouterApp {
  static String KHomeView = '/HomeView';
  static String KBooksView = '/BooksView';
  static String KsearshView = '/searshView';
 
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return Splash_Veiw();
        },
      ),
      GoRoute(
        path: KHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return HomeView();
        },
      ),
      GoRoute(
        path: KBooksView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (context) =>
                  SimilerCubiteCubit(HomeRepoImpl(apiServes: ApiServes(Dio()))),
              child: BookDetilsView(
                bookModel: state.extra as BookModel,
              ));
        },
      ),
      GoRoute(
        path: KsearshView,
        builder: (BuildContext context, GoRouterState state) {
          return SearshView(bookModel: bookModel,);
        },
      ),
    ],
  );
}
