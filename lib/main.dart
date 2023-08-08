
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_pro/screens/home/view/Home_SCreen.dart';
import 'package:new_pro/screens/home/view/Show_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
            name: '/',
            page: () => GitaScreen(),
          ),
          GetPage(
            name: '/show',
            page: () => ShowScreen(),
          ),
        ],
      ),
    ),
  );
}