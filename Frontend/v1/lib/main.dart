// ignore_for_file: prefer_const_constructors

import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/constants/color.dart';
import 'package:ui_design/layout.dart';
import 'package:ui_design/pages/home.dart';
import './pages/dashboard_pages.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: Colors.black,
          ),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: primary_color),
      home: SiteLayout(),
    );
  }
}
