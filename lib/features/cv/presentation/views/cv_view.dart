import 'package:flutter/material.dart';
import 'package:salma_maged/core/app_color.dart';
import 'package:salma_maged/features/cv/presentation/views/widgets/app_drawer.dart';
import 'package:salma_maged/features/cv/presentation/views/widgets/cv_view_body.dart';

class CvView extends StatelessWidget {
  const CvView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: AppColor.secondColor),
        drawerEnableOpenDragGesture: true,
        drawerScrimColor: AppColor.secondColor,
        drawer: AppDrawer(),
        body: CvViewBody(),
      ),
    );
  }
}
