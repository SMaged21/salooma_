import 'package:dartz/dartz.dart';
import 'package:salooma_app/core/api_service.dart';
import 'package:salooma_app/core/errors/failure.dart';
import 'package:salooma_app/features/books/data/models/book_model.dart';
import 'package:salooma_app/features/books/data/repos/book_repo.dart';

class BookRepoImpl implements BookRepo {
  final ApiService apiService;

  BookRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks() async {
    try {
      final querySnapshot = await apiService.get("Books");

      List<BookModel> books = querySnapshot.docs
          .map((doc) => BookModel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return right(books);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFavouriteBooks() {
    throw UnimplementedError();
  }
}
