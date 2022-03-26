// ignore_for_file: invalid_required_positional_param, must_be_immutable, unnecessary_this

import 'package:flutter/material.dart';

import '../model/sensor.dart';

class SensorWidgets extends StatelessWidget {
  Sensor sensorObject;
  double size;
  SensorWidgets(@required this.sensorObject, {this.size: 400, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.size * 2 / 3,
      width: this.size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
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
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Row(
          //children: [
          // cái đầu của cái widget
          //Expanded(
          //child:
          Padding(
            padding:
                EdgeInsets.fromLTRB(size / 15, size / 10, size / 15, size / 20),
            child: Text(sensorObject.sensorName, style: title()),
            // ),
          ),
          // ignore: prefer_const_constructors
          // Padding(
          //   padding: EdgeInsets.all((this.width > this.height)
          //       ? (this.height / 9)
          //       : (this.width / 9)),
          //   // child: const Icon(Icons.arrow_forward_ios_outlined),
          // )
          //], //children
          //),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [

          //crossAxisAlignment: CrossAxisAlignment.center,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sensorObject.getImage(scale: 400 / this.size),
              Padding(
                padding: EdgeInsets.all(size / 40),
                child: Text(
                  sensorObject.getStatus(),
                  style: statusString(),
                ),
              ),
              Text(
                sensorObject.getUnit(),
                style: unitString(),
              )
              // Padding(
              //     padding:
              //         EdgeInsets.fromLTRB(size / 3, size / 3, size / 3, 1)),
              // Positioned(
              //   left: size / 2.5,
              // child: sensorObject.icon(
              //   size: size / 3,
              //   color: Color.fromARGB(255, 127, 236, 167),

              //),
            ],
          ),
          // ],
          //),
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
