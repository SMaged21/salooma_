import 'package:flutter/material.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Books", style: AppFonts.st32),
        CustomBookList(),
        Text("Favourite books", style: AppFonts.st32),
        CustomBookList(),
      ],
    );
  }
}

class CustomBookList extends StatelessWidget {
  const CustomBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    return Column(children: []);
  }
}
