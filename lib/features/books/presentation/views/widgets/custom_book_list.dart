import 'package:flutter/material.dart';
import 'package:salma_maged/features/books/data/models/book_model.dart';
import 'package:salma_maged/features/books/presentation/views/widgets/custom_list_item.dart';

class CustomBookList extends StatelessWidget {
  const CustomBookList({super.key, required this.books});

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, i) {
        return CustomListItem(book: books[i]);
      },
    );
  }
}
