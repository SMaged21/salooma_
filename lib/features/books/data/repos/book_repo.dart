import 'package:dartz/dartz.dart';
import 'package:salma_maged/core/errors/failure.dart';
import 'package:salma_maged/features/books/data/models/book_model.dart';

abstract class BookRepo {
  Future<Either<Failure, List<BookModel>>> fetchBooks();
  Future<Either<Failure, List<BookModel>>> fetchFavouriteBooks();
}
