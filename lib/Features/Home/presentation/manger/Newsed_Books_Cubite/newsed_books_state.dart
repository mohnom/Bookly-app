part of 'newsed_books_cubit.dart';

sealed class NewsedBooksState extends Equatable {
  const NewsedBooksState();

  @override
  List<Object> get props => [];
}

final class NewsedBooksInitial extends NewsedBooksState {}

final class NewsedBooksLoading extends NewsedBooksState {}



final class NewsedBooksSucsses extends NewsedBooksState {
  final List<BookModel> books;

  NewsedBooksSucsses( this.books);
}
final class NewsedBooksFaulled extends NewsedBooksState {
  final String errMessage;

  NewsedBooksFaulled( {required this.errMessage});
}