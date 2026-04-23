part of 'fetch_favourite_books_cubit.dart';

@immutable
sealed class FetchFavouriteBooksState {}

final class FetchFavouriteBooksInitial extends FetchFavouriteBooksState {}

final class FetchFavouriteBooksSuccess extends FetchFavouriteBooksState {
  final List<BookModel> books;

  FetchFavouriteBooksSuccess({required this.books});
}

final class FetchFavouriteBooksFailure extends FetchFavouriteBooksState {
  final String errMessage;

  FetchFavouriteBooksFailure({required this.errMessage});
}

final class FetchFavouriteBooksLoading extends FetchFavouriteBooksState {}
