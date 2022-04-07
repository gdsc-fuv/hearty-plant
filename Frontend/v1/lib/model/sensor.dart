import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../apicall/apiCall.dart';
import 'package:http/http.dart' as http;
import '../widget/sensorWidget.dart';

class Sensor {
  String sensorName;
  int sensorId;
  double? status;
  double data;
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
