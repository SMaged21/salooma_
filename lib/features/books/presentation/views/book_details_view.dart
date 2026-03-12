import 'package:flutter/material.dart';
import 'package:salooma_app/core/app_color.dart';
import 'package:salooma_app/features/books/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.secondColor),
      body: BookDetailsViewBody(),
    );
  }
}
