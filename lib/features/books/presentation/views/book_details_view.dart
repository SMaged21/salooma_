import 'package:flutter/material.dart';
import 'package:salma_maged/core/app_color.dart';
import 'package:salma_maged/features/books/data/models/book_model.dart';
import 'package:salma_maged/features/books/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  final BookModel book;
  const BookDetailsView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.secondColor),
      body: BookDetailsViewBody(book: book),
    );
  }
}
