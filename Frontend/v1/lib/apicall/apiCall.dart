import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import '../model/sensor.dart';

Future<List> fetchSensor() async {
  List<Sensor> data = [];
  final response =
      await http.get(Uri.parse('https://gdsc-fuv.github.io/sensor.json'));
  Duration three = Duration(seconds: 3);
  Future.delayed(three, () => null);
  var a = jsonDecode(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    for (var item in a['sensor_list']) {
      data.add(Sensor(
          sensorName: item["sensor_name"],
          sensorId: item["id"],
          data: item["data"]));
    }

    return data;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
