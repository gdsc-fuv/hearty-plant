import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'dart:math' as math;

class DevicesWidgets_2 extends StatefulWidget {
  // Device device;
  double size;
  DevicesWidgets_2({this.size: 100}) {}
  @override
  _MyHomePageState createState() {
    return _MyHomePageState(size = size);
  }
}

class _MyHomePageState extends State<DevicesWidgets_2> {
  bool state = false;
  double size;
  _MyHomePageState(this.size) {}
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
                    'assets/images/pump.png',
                    scale: 75 / this.size,
                    alignment: Alignment.topRight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(this.size * 0.6, this.size * 0.2,
                      this.size * 0.2, this.size * 0.2),
                  child: CupertinoSwitch(
                    value: state,
                    onChanged: (bool value) {
                      setState(() {
                        state = value;
                        setState(() {});
                      });
                    },
                  ),
                )
              ]),
              Text(
                "Main pump",
                style: TextStyle(
                    fontSize: this.size * 0.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                state == true ? "On" : "Off",
                style: TextStyle(
                    fontSize: this.size * 0.2,
                    fontWeight: FontWeight.bold,
                    color: state == true
                        ? CupertinoColors.activeGreen
                        : CupertinoColors.destructiveRed),
              )
            ],
          )),
    );
  }
}
