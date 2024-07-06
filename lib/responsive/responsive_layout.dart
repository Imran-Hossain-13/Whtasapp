import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx_management/getx_controller.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  ResponsiveLayout({
    super.key,
    required this.webScreenLayout,
    required this.mobileScreenLayout
  });

  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains){
        if(constrains.maxWidth > 900){
          // Web Screen
          counterController.changeScreenSize(constrains.maxWidth);
          return webScreenLayout;
        }else{
          // Mobile Screen
          counterController.changeScreenSize(constrains.maxWidth);
          return mobileScreenLayout;
        }
      }
    );
  }
}
