import 'package:flutter/material.dart';

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
                'assets/Pump.png',
                alignment: Alignment.topRight,
              ),
              // Image.asset(
              //   'assets/valve.png',
              //   alignment: Alignment.bottomLeft,
              // )
            ])
          ],
        ));
  }
}
