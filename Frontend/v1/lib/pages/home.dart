import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/controllers/counterController.dart';
import 'package:ui_design/pages/next_screen.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    var add;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(child: Text("Clicks: ${counterController.counter.value}")),
        SizedBox(height: 10),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => OtherScreen());
                },
                child: Text("Open Next Screen"))),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
