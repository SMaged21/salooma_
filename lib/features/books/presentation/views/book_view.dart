import 'package:flutter/material.dart';
import 'package:salooma_app/core/app_color.dart';
import 'package:salooma_app/features/books/presentation/views/widgets/book_view_body.dart';
import 'package:salooma_app/features/cv/presentation/views/widgets/app_drawer.dart';

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
