import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salma_maged/core/api_service.dart';
import 'package:salma_maged/core/app_color.dart';
import 'package:salma_maged/features/books/data/repos/book_repo_impl.dart';
import 'package:salma_maged/features/books/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:salma_maged/features/books/presentation/views/widgets/book_view_body.dart';
import 'package:salma_maged/features/cv/presentation/views/widgets/app_drawer.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchBooksCubitCubit(
            BookRepoImpl(
              apiService: ApiService(firestore: FirebaseFirestore.instance),
            ),
          )..fetchBooks(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(backgroundColor: AppColor.secondColor),
        drawerEnableOpenDragGesture: true,
        drawerScrimColor: AppColor.secondColor,
        drawer: AppDrawer(),
        body: BookViewBody(),
      ),
    );
  }
}
