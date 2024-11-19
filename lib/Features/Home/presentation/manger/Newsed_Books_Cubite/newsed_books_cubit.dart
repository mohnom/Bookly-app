import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/data/models/repo/home_repo.dart';
import 'package:booly_app/Features/Home/presentation/manger/Newsed_Books_Cubite/newsed_books_cubit.dart';
import 'package:booly_app/core/errors/feuler.dart';
import 'package:equatable/equatable.dart';

part 'newsed_books_state.dart';

class NewsedBooksCubit extends Cubit<NewsedBooksState> {
  NewsedBooksCubit(this.homeRepo) : super(NewsedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> NewsedBooksState() async {
    emit(NewsedBooksLoading());
    var reuslt = await homeRepo.fetchNewsBooks();
    reuslt.fold((Fauller) {
      emit(NewsedBooksFaulled(errMessage: Fauller.errMessage));
    }, (books) {
      emit(NewsedBooksSucsses( books));
    });
  }
}
