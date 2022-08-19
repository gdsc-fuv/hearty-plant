import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:v1/models/sensor.dart';


//Đổi class thành Stream
Stream<List> fetchSensor() async* {
  //Loop cập nhật real time
  while(true) {
  Duration three = Duration(seconds: 3);
  Future.delayed(three, () => null);
  List<Sensor> data = [];
  final response =
      await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/America/Argentina/Salta'));
  //Trang này cho API thời gian để nhìn rõ real time,
  // sau này sẽ thay bằng url api lấy sensor của app
  var a = jsonDecode(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    //Cái này để tách data của web 
    //thôi khi nào database real time thì sửa
      data.add(Sensor(
          sensorName: "Light",
          sensorId: 2,
          data: a['datetime'].toString().substring(16, 19)));
    
    //Để print ra log để check lỗi, xóa thoải mái
    // for (var item in data) {
    //   print(item.getData());
    // }
    yield data;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
}
