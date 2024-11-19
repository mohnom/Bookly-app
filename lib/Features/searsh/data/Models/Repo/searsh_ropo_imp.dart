import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/searsh/data/Models/Repo/searsh_repo.dart';
import 'package:booly_app/core/errors/feuler.dart';
import 'package:booly_app/core/utils/api_serves.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearshRopoImp implements searshrepo {
  final ApiServes apiServes;
  final String searsh;
  SearshRopoImp({required this.apiServes,required this.searsh});
  @override
  Future<Either<Fauller, List<BookModel>>> FetchSearshBook() async {
    try {
      var data = await apiServes.get(endpoint: 'volumes?q=$searsh');

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
