import 'package:flutter/material.dart';

import 'package:ui_design/widgets/device_widgets.dart';
import 'package:ui_design/widgets/device_widgets_2.dart';

// import 'GeneratedToggleswitchWidget1.dart';
// import '/GeneratedMdipipevalveWidget.dart';

// import '/GeneratedSolenoidvalve1Widget.dart';
// import '/GeneratedOnWidget.dart';
// void main(List<String> args) {
//   runApp(new MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'Hearty Plant Dashboard',
//     home: _Devices(),
//   ));
// }

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Heart Plant Dashboard',
        color: Colors.white,
        theme: ThemeData(),
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(),
            body: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(children: [
                  DevicesWidgets_1(),
                  DevicesWidgets_2(),
                ]))));
  }
}
