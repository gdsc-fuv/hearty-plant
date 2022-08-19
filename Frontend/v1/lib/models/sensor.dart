import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v1/apicall/apicall.dart';
import 'package:http/http.dart' as http;
import 'package:v1/widgets/sensor_widgets.dart';

class Sensor {
  String sensorName;
  int sensorId;
  double? status;
  //Cái này thành string để dùng data của web, 
  //khi dùng data của database clb thì sẽ đổi sang int
  String data;
  final SENSORLIST = <String>["pH", "TDS", "Light", "Temperature", "Humidity"];
  final UNIT = <String>["", "ppm", "lux", "°C", "%"];
  int index = 0;
  // varibales for UI
  Sensor(
      {required this.sensorName,
      required this.sensorId,
      this.status,
      required this.data}) {
    this.index = SENSORLIST.indexOf(sensorName);
  }
  String getData() {
    return data.toString();
  }

  String getUnit() {
    return this.UNIT[this.index];
  }

  Image getImage({double scale: 3}) {
    return Image.asset(
      sensorName + ".png",
      scale: scale,
    );
  }
}
