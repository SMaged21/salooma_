import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salma_maged/core/app_routes.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';
import 'package:salma_maged/features/books/data/models/book_model.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return MaterialButton(
      onPressed: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsView);
      },
      child: Column(
        children: [
          _BookImage(
            imagePath: book.img,
            width: width * 0.5,
            height: height * 0.3,
          ),
          Text(book.bookTitle, style: AppFonts.st20),
          Text(book.bookAuthor, style: AppFonts.st20),
        ],
      ),
    );
  }
}

class _BookImage extends StatelessWidget {
  const _BookImage({
    required this.imagePath,
    required this.width,
    required this.height,
  });

  final String imagePath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    const fallbackAsset = "assets/images/pride.webp";
    final path = imagePath.isEmpty ? fallbackAsset : imagePath;

    if (path.startsWith('http')) {
      return Image.network(
        path,
        width: width,
        height: height,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(fallbackAsset, width: width, height: height);
        },
      );
    }

    return Image.asset(
      path,
      width: width,
      height: height,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(fallbackAsset, width: width, height: height);
      },
    );
  }
}
