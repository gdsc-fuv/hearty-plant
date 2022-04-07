import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'dart:async';

void main() {
  // Timer.periodic(Duration(seconds: 5), (timer) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hearty Plant',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.primaryBg),
      home: Dashboard(),
    );
  }
}
