import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:salooma_app/features/books/data/models/book_model.dart';

part 'fetch_books_state.dart';

class FetchBooksCubitCubit extends Cubit<FetchBooksCubitState> {
  FetchBooksCubitCubit() : super(FetchBooksCubitInitial());
}
