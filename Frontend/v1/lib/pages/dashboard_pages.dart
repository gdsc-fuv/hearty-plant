import 'package:flutter/material.dart'
    show
        BuildContext,
        Color,
        Colors,
        Container,
        Expanded,
        Key,
        Row,
        StatefulWidget,
        StatelessWidget,
        Widget;
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/sensor_widgets.dart';
import '../widgets/device_widgets.dart';
import '../widgets/top_bar.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // layout
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(child: MyStatelessWidget()),
        Expanded(
            flex: 10,
            child: Container(
              color: Color.fromARGB(249, 255, 255, 255),
            )), // setup Pageview
        Expanded(
            flex: 3,
            child: Container(color: Colors.white)) // setup scrollable widget
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MyStatelessWidget {}

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
//     );
//   }
// }
