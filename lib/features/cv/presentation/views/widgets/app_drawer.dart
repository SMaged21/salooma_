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
      child: Column(
        children: [
          ListTile(
            onTap: () {
              GoRouter.of(context).go(AppRoutes.cvView);
            },
            leading: Icon(Icons.person),
            title: Text("profile"),
          ),
        ],
      ),
    );
  }
}
