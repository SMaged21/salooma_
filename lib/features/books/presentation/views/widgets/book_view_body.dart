import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';
import 'package:salma_maged/features/books/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:salma_maged/features/books/presentation/manager/fetch_favourite_books_cubit/fetch_favourite_books_cubit.dart';
import 'package:salma_maged/features/books/presentation/views/widgets/custom_book_list.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Books", style: AppFonts.st32),
          Expanded(child: CustomBookListBuilder()),
          Text("Favourite books", style: AppFonts.st32),
          Expanded(child: CustomFavouriteBookListBuilder()),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class CustomFavouriteBookListBuilder extends StatelessWidget {
  const CustomFavouriteBookListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFavouriteBooksCubit, FetchFavouriteBooksState>(
      builder: (context, state) {
        if (state is FetchFavouriteBooksSuccess) {
          if (state.books.isEmpty) {
            return const Center(child: Text("No books found"));
          }
          return CustomBookList(books: state.books);
        } else if (state is FetchFavouriteBooksFailure) {
          return Text("oops ${state.errMessage}");
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class CustomBookListBuilder extends StatelessWidget {
  const CustomBookListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBooksCubitCubit, FetchBooksCubitState>(
      builder: (context, state) {
        if (state is FetchBooksCubitSuccessful) {
          if (state.books.isEmpty) {
            return const Center(child: Text("No books found"));
          }
          return CustomBookList(books: state.books);
        } else if (state is FetchBooksCubitFailure) {
          return Text("oops ${state.errMessage}");
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
