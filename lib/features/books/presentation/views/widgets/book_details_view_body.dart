import 'package:flutter/material.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';
import 'package:salma_maged/features/books/data/models/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel book;
  const BookDetailsViewBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Column(
              children: [
                Image.asset(book.img, width: width * 0.6, height: height * .4),
                Text(book.bookTitle, style: AppFonts.st24),
                Text(book.bookAuthor, style: AppFonts.st24),
              ],
            ),
          ),
          Text("Description", style: AppFonts.st24),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(textAlign: TextAlign.center, book.bookDescription),
          ),
        ],
      ),
    );
  }
}
