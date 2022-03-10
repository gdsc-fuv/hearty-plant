import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sensor {
  int sensorId;
  String sensorName;
  double? status;
  final SENSORLIST = <String>["pH", "TDS", "Light", "Temperature", "Huminity"];
  final UNIT = <String>["", "ppm", "lux", "°C", "%"];
  int index = 0;

  Sensor(@required this.sensorId, @required this.sensorName, this.status) {
    this.index = SENSORLIST.indexOf(sensorName);
  }
  String getStatus() {
    return (this.status != null) ? this.status.toString() : "N/A";
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

Sensor pHSensor = Sensor(1, "pH", 1);
