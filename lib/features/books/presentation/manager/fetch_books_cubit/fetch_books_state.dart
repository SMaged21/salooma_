part of 'fetch_books_cubit.dart';

@immutable
sealed class FetchBooksCubitState {}

final class FetchBooksCubitInitial extends FetchBooksCubitState {}

final class FetchBooksCubitLoading extends FetchBooksCubitState {}

final class FetchBooksCubitFailure extends FetchBooksCubitState {
  final String errMessage;

  FetchBooksCubitFailure({required this.errMessage});
}

final class FetchBooksCubitSuccessful extends FetchBooksCubitState {
  final List<BookModel> books;

  FetchBooksCubitSuccessful({required this.books});
}
