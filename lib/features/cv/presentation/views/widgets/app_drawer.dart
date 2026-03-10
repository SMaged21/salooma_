import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salooma_app/core/app_color.dart';
import 'package:salooma_app/core/app_routes.dart';

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
                Navigator.pop(context);

                context.go(AppRoutes.bookView);
              },
            ),

            // ListTile(
            //   leading: const Icon(Icons.note),
            //   title: const Text("Notes"),
            //   onTap: () {
            //     Navigator.pop(context);

            //     // add navigation later
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
