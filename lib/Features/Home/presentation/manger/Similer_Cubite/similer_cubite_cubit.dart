import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/Home/data/models/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similer_cubite_state.dart';

class SimilerCubiteCubit extends Cubit<SimilerCubiteState> {
  SimilerCubiteCubit(this.homeRepo) : super(SimilerCubiteInitial());
  final HomeRepo homeRepo;
  Future<void> SimilerCubiteState({required String Categry}) async {
    emit(SimilerCubiteLoading());
    var reuslt = await homeRepo.FetchSimilerBook (Categry: Categry);
    reuslt.fold((Fauller) {
      emit(SimilerCubiteFailler(errMessage: Fauller.errMessage));
    }, (Books) {
      emit(SimilerCubitesucsses(Books));
    });
  }
}
