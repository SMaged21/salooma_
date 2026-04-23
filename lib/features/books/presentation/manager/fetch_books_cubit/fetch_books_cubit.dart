import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:salma_maged/features/books/data/models/book_model.dart';
import 'package:salma_maged/features/books/data/repos/book_repo.dart';

part 'fetch_books_state.dart';

class FetchBooksCubitCubit extends Cubit<FetchBooksCubitState> {
  FetchBooksCubitCubit(this.bookRepo) : super(FetchBooksCubitInitial());
  final BookRepo bookRepo;
  Future<void> fetchBooks() async {
    emit(FetchBooksCubitLoading());
    var response = await bookRepo.fetchBooks();

    response.fold(
      (failure) {
        emit(FetchBooksCubitFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(FetchBooksCubitSuccessful(books: books));
      },
    );
  }
}
