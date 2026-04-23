import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:salma_maged/core/app_color.dart';
import 'package:salma_maged/core/app_routes.dart';
import 'package:salma_maged/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'salma maged',
      theme: ThemeData(scaffoldBackgroundColor: AppColor.secondColor),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.route,
    );
  }
}
