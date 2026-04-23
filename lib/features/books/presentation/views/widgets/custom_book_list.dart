import 'package:flutter/material.dart';
import 'package:salma_maged/features/books/presentation/views/widgets/custom_list_item.dart';

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
