import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  // const OtherScreen({Key? key}) : super(key: key);
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Screen was clicked ${_counterController.counter.value}"),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Back to Main Screen"))
      ]),
    );
  }
}
