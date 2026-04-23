import 'package:flutter/material.dart';
import 'package:salma_maged/core/app_color.dart';
import 'package:salma_maged/features/books/presentation/views/widgets/book_view_body.dart';
import 'package:salma_maged/features/cv/presentation/views/widgets/app_drawer.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.secondColor),
      drawerEnableOpenDragGesture: true,
      drawerScrimColor: AppColor.secondColor,
      drawer: AppDrawer(),
      body: BookViewBody(),
    );
  }
}
