import 'package:flutter/material.dart';
import 'widgets/sensor_widgets.dart';
import './models/sensors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Color.fromARGB(173, 198, 198, 198),
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(173, 217, 217, 217),
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SensorWidgets(
                Sensor(
                  32,
                  'Light',
                  43,
                ),
                size: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
