import 'package:flutter/material.dart';
import '../constants/images.dart';

class DeviceContainer extends StatefulWidget {
  const DeviceContainer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Nam
//     );
//   }
// }

  State<DeviceContainer> createState() => _DeviceContainer();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _DeviceContainer extends State<DeviceContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: new AppBar(
        //   title: Text("Devices"),
        //   backgroundColor: Colors.green[900],
        // ),
        body: Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(crossAxisCount: 6, children: <Widget>[
              Card(
                  margin: EdgeInsets.all(30.0),
                  child: InkWell(
                      onTap: () {},
                      splashColor: Color.fromRGBO(1, 69, 25, 1),
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/plumb.png',
                          ),
                          Text("Solenoid Valve 1",
                              style: const TextStyle(
                                fontSize: 20.0,
                              ))
                        ],
                      ))))
            ])));
  }
}
