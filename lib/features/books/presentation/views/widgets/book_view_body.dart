import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salooma_app/core/app_routes.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';

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

class CustomBookList extends StatelessWidget {
  const CustomBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, i) {
        return CustomListItem();
      },
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

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
          Image.asset(
            "assets/images/pride.webp",
            width: width * 0.5,
            height: height * 0.3,
          ),
          Text("Book name", style: AppFonts.st20),
          Text("Author name", style: AppFonts.st20),
        ],
      ),
    );
  }
}
