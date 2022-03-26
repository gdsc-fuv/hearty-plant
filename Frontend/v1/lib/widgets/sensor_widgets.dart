// ignore_for_file: invalid_required_positional_param, must_be_immutable, unnecessary_this

import 'package:flutter/material.dart';
import 'package:v1/models/model.dart';
import 'package:v1/models/sensor.dart';

import '../apicall/apicall.dart';

class SensorWidgets extends StatefulWidget {
  double size;
  String name;
  SensorWidgets({required this.name, this.size: 200, Key? key})
      : super(key: key);

  @override
  State<SensorWidgets> createState() =>
      _SensorWidgetsState(name = name, size = size);
}

class _SensorWidgetsState extends State<SensorWidgets> {
  String name;
  late Sensor sensorObject;
  double size;
  List<Sensor> data = [];
  _SensorWidgetsState(this.name, this.size);
  late Future<Sensor> futureSensor;

  @override
  void initState() {
    super.initState();
    late Future<Sensor> futureSensor;
    Future<List> data = fetchSensor();
    int a = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.size * 2 / 3,
      width: this.size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x28274c77),
            blurRadius: 10.11,
            offset: Offset(0, 5.05),
          ),
        ],
      ),
      //khúc này bắt đầu vô code cái widget
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.fromLTRB(size / 15, size / 10, size / 15, size / 20),
            child: Text(sensorObject.sensorName, style: title()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sensorObject.getImage(scale: 400 / this.size),
              Padding(
                padding: EdgeInsets.all(size / 40),
                child: Text(
                  sensorObject.getData(),
                  style: statusString(),
                ),
              ),
              Text(
                sensorObject.getUnit(),
                style: unitString(),
              )
            ],
          ),
        ],
      ),
    );
  }

  TextStyle statusString() {
    return TextStyle(
      color: Color(0xff004519),
      fontSize: size / 5,
      fontFamily: "Lato",
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle unitString() {
    return TextStyle(
      color: Color(0xff004519),
      fontSize: size / 7,
      fontFamily: "Lato",
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle title() {
    double a = size / 9;
    return TextStyle(
      color: Color(0xff159945),
      fontSize: a,
      fontFamily: "Lato",
      fontWeight: FontWeight.w800,
    );
  }
}
// class SensorWidgets extends StatelessWidget {
//   Sensor sensorObject;
//   double size;
//   SensorWidgets(@required this.sensorObject, {this.size: 400, Key? key})
//       : super(key: key);

//   @override
  
// }
// class SensorDisplay extends StatefulWidget {
//   const SensorDisplay({ Key? key }) : super(key: key);

//   @override
//   State<SensorDisplay> createState() => _SensorDisplayState();
// }

// class _SensorDisplayState extends State<SensorDisplay> {
//   Future<List> futureSensor;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
    
//     futureSensor = fetchSensor();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:FutureBuilder<Sensor>(future: futureSensor.get(0),
//             builder: (context, snapshot) {
//               if 
//             }),
      
//     );
//   }
// }