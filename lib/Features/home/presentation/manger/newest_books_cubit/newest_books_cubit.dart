import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<newestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(newestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> FetchBooks() async {
    emit(newestBooksLoading());

    var result = await homeRepo.fetchNewstBooks();
    result.fold((failur) {
      emit(newestBooksFailure(failur.errMessage));
    }, (Books) {
      emit(newestBooksSuccess(Books));
    });
  }
}
