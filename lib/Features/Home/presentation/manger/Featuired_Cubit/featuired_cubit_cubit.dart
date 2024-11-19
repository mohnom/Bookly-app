import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/data/models/repo/home_repo.dart';
import 'package:booly_app/core/errors/feuler.dart';
import 'package:equatable/equatable.dart';

part 'featuired_cubit_state.dart';

class FeatuiredCubitCubit extends Cubit<FeatuiredCubitState> {
  FeatuiredCubitCubit(this.homeRepo) : super(FeatuiredCubitInitial());
  final HomeRepo homeRepo;
  Future<void> FetchFeaturedBook() async {
    emit(FeatuiredCubitLoading());
    var reuslt = await homeRepo.FetchFeaturedBook();
    reuslt.fold((Fauller) {
      emit(FeatuiredCubitFailler(errMessage: Fauller.errMessage));
    }, (Books) {
      emit(FeatuiredCubitSucssas(Books));
    });
  }
}
