import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/core/errors/feuler.dart';
import 'package:dartz/dartz.dart';

abstract class  searshrepo{
    Future<Either<Fauller, List<BookModel>>> FetchSearshBook();
}