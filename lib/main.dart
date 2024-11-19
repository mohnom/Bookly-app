import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/data/models/repo/home_repo_impl.dart';
import 'package:booly_app/Features/Home/presentation/manger/Featuired_Cubit/featuired_cubit_cubit.dart';
import 'package:booly_app/Features/Home/presentation/manger/Newsed_Books_Cubite/newsed_books_cubit.dart';
import 'package:booly_app/Features/Home/presentation/manger/Similer_Cubite/similer_cubite_cubit.dart';
import 'package:booly_app/Features/Home/presentation/manger/Similer_Cubite/similer_cubite_cubit.dart';
import 'package:booly_app/Features/splash/presentation/veiw/Splash_veiw.dart';
import 'package:booly_app/core/utils/api_serves.dart';
import 'package:booly_app/core/utils/router_app.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
p
import 'package:google_fonts/google_fonts.dart';

import 'Features/Home/presentation/manger/Similer_Cubite/similer_cubite_cubit.dart';

void main() {
  runApp(Bookly_App());
}

class Bookly_App extends StatelessWidget {
  Bookly_App({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeatuiredCubitCubit(HomeRepoImpl(apiServes: ApiServes(Dio())))
                  ..FetchFeaturedBook()),
        BlocProvider(
            create: (context) =>
                NewsedBooksCubit(HomeRepoImpl(apiServes: ApiServes(Dio())))
                  ..NewsedBooksState()),
      
      ],
      child: MaterialApp.router(
        routerConfig: RouterApp.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color(0xff100B20),
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
