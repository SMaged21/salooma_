import 'package:dartz/dartz.dart';
import 'package:salooma_app/core/errors/failure.dart';
import 'package:salooma_app/features/books/data/models/book_model.dart';

abstract class BookRepo {
  Future<Either<Failure, List<BookModel>>> fetchBooks();
  Future<Either<Failure, List<BookModel>>> fetchFavouriteBooks();
}
