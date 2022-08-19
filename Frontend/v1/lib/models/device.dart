import 'package:flutter/cupertino.dart';

class Device {
  int deviceID;
  var deviceName;
  int? status;
  final DEVICELIST = <String>[
    "Air Pump",
    "Water Pump",
    "Peristalic Pump",
    "Solenoid Valve 1",
    "Solenoid Valve 2",
    "Solenoid Valve 3",
    "Solenoid Valve 4",
    "Solenoid Valve 5",
    "Exhaust Fan"
  ];
  Device(
      {required this.deviceID, required this.deviceName, required this.status});
  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      deviceID: json['id'],
      deviceName: json['device_name'],
      status: json['status'],
    );
  }
}
