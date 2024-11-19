part of 'featuired_cubit_cubit.dart';

sealed class FeatuiredCubitState extends Equatable {
  const FeatuiredCubitState();

  @override
  List<Object> get props => [];
}

final class FeatuiredCubitInitial extends FeatuiredCubitState {}

final class FeatuiredCubitLoading extends FeatuiredCubitState {}

final class FeatuiredCubitSucssas extends FeatuiredCubitState {
  final List<BookModel> Books;

  FeatuiredCubitSucssas(this.Books);
}

final class FeatuiredCubitFailler extends FeatuiredCubitState {
  final String errMessage;

  FeatuiredCubitFailler({required this.errMessage});
}
