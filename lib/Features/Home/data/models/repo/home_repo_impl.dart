import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/data/models/repo/home_repo.dart';
import 'package:booly_app/core/errors/feuler.dart';
import 'package:booly_app/core/utils/api_serves.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServes apiServes;
  HomeRepoImpl({required this.apiServes});
  @override
  Future<Either<Fauller, List<BookModel>>> FetchFeaturedBook() async {
    try {
      var data = await apiServes.get(
          endpoint:
              'volumes?q=quilting&Filtering=-free-ebooks &sorting=newest');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBookss(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(serivesfauller.fromDioError(e));
      }
      return left(serivesfauller(e.toString()));
    }
  }

  @override
  Future<Either<Fauller, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiServes.get(
          endpoint: 'volumes?q=subject:Programming&Filtering=-free-ebooks');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBookss(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(serivesfauller.fromDioError(e));
      }
      return left(serivesfauller(e.toString()));
    }
  }
  
  @override
  Future<Either<Fauller, List<BookModel>>> FetchSimilerBook({required String Categry})async {
   try {
      var data = await apiServes.get(
          endpoint: 'volumes?q=subject:Programming&Sorting=relevance&Filtering=-free-ebooks');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBookss(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(serivesfauller.fromDioError(e));
      }
      return left(serivesfauller(e.toString()));
    }
  }
}
