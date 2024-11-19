part of 'similer_cubite_cubit.dart';

sealed class SimilerCubiteState extends Equatable {
  const SimilerCubiteState();

  @override
  List<Object> get props => [];
}

final class SimilerCubiteInitial extends SimilerCubiteState {}

final class SimilerCubiteLoading extends SimilerCubiteState {}

final class SimilerCubitesucsses extends SimilerCubiteState {
  const SimilerCubitesucsses(this.books);
  final List<BookModel> books;
}

final class SimilerCubiteFailler extends SimilerCubiteState {
  final String errMessage;
  SimilerCubiteFailler({required this.errMessage});
}
