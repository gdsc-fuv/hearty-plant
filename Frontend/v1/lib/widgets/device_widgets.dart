import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'dart:math' as math;

class DevicesWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 200,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.11,
                  offset: Offset(0, 5.505))
            ]),
        child: Column(
          children: [
            Row(children: [
              Image.asset(
                'assets/images/plumb.png',
                alignment: Alignment.topRight,
              ),
              Image.asset(
                'assets/images/switch.png',
                alignment: Alignment.bottomLeft,
              )
            ])
          ],
        ));
  }
}

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: new AppBar(
//           title: Text("Devices"),
//           backgroundColor: Color.fromRGBO(1, 69, 25, 1),
//         ),
//         body: Container(
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
//             padding: EdgeInsets.all(30.0),
//             child: GridView.count(crossAxisCount: 3, children: <Widget>[
//               Card(
//                   margin: EdgeInsets.all(30.0),
//                   child: InkWell(
//                       onTap: () {},
//                       splashColor: Color.fromRGBO(1, 69, 25, 1),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Image.asset(
//                             'assets/images/plumb.png',
//                             alignment: Alignment.center,
//                           ),
//                           Text("Solenoid Valve 1",
//                               textAlign: TextAlign.right,
//                               style: new TextStyle(
//                                 fontSize: 20.0,
//                               ))
//                         ],
//                       )))
//             ])));
//   }
// }
