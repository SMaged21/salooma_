import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salma_maged/core/app_color.dart';
import 'package:salma_maged/core/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.thirdColor,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.pop(context);
                context.go(AppRoutes.cvView);
              },
            ),

            ListTile(
              leading: const Icon(Icons.book_rounded),
              title: const Text("Books"),
              onTap: () {
                context.go(AppRoutes.bookView);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
