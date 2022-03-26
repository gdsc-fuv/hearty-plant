import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/style/colors.dart';

import '../config/size_config.dart';
// import 'dart:math' as math;

class DevicesWidgets_1 extends StatefulWidget {
  // Device device;
  final String device;
  final String device_icon;
  double size;

  DevicesWidgets_1(@required this.device, @required this.device_icon,
      {this.size: 70});
  //DevicesWidgets_1({this.size: 100}) {}
  @override
  DeviceState createState() {
    return DeviceState(size = size, device, device_icon);
  }
}

class DeviceState extends State<DevicesWidgets_1> {
  bool state = false;
  double size;
  final String device;
  final String device_icon;
  DeviceState(this.size, this.device, this.device_icon) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
          height: this.size * 1.5,
          width: this.size * 2,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(this.size * 0.2)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.11,
                    offset: Offset(0, 5.505))
              ]),
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    device_icon,
                    scale: 120 / this.size,
                    alignment: Alignment.topRight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(this.size * 0.1, this.size * 0.1,
                      this.size * 0.1, this.size * 0.1),
                  child: Transform.scale(
                    scale: 0.4,
                    child: CupertinoSwitch(
                      value: state,
                      onChanged: (bool value) {
                        setState(() {
                          state = value;
                          setState(() {});
                        });
                      },
                    ),
                  ),
                )
              ]),
              Text(
                device,
                style: TextStyle(
                    fontSize: size * 0.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical,
              ),
              Text(
                state == true ? "On" : "Off",
                style: TextStyle(
                    fontSize: this.size * 0.2,
                    fontWeight: FontWeight.bold,
                    color: state == true
                        ? AppColors.secondaryGreen
                        : AppColors.secondary),
              )
            ],
          )),
    );
  }
}
