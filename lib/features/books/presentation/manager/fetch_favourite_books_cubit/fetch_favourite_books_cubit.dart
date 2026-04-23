import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:salma_maged/features/books/data/models/book_model.dart';
import 'package:salma_maged/features/books/data/repos/book_repo.dart';

part 'fetch_favourite_books_state.dart';

class FetchFavouriteBooksCubit extends Cubit<FetchFavouriteBooksState> {
  FetchFavouriteBooksCubit({required this.bookRepo})
    : super(FetchFavouriteBooksInitial());
  final BookRepo bookRepo;
  Future<void> fetchFavouriteBooks() async {
    emit(FetchFavouriteBooksLoading());
    var response = await bookRepo.fetchFavouriteBooks();

    response.fold(
      (failure) {
        emit(FetchFavouriteBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(FetchFavouriteBooksSuccess(books: books));
      },
    );
  }
}
