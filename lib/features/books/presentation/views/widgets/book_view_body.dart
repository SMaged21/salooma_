import 'package:flutter/material.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';
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
          Expanded(child: CustomBookList()),
          Text("Favourite books", style: AppFonts.st32),
          Expanded(child: CustomBookList()),
        ],
      ),
    );
  }
}
