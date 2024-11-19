import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/core/errors/feuler.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Fauller, List<BookModel>>> fetchNewsBooks();
  Future<Either<Fauller, List<BookModel>>> FetchFeaturedBook();
   Future<Either<Fauller, List<BookModel>>> FetchSimilerBook({required String Categry});
}
