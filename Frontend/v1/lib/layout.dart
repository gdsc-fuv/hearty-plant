import 'package:flutter/material.dart';
import 'package:ui_design/constants/color.dart';
import 'package:ui_design/widgets/large_screen.dart';
import 'package:ui_design/widgets/top_bar.dart';

import 'widgets/menu_bar.dart';

class SiteLayout extends StatelessWidget {
  // const SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar(context, scaffoldKey),
        body: Row(children: [
          const Expanded(
            child: Center(
              child: MyStatefulWidget(),
            ),
          ),
          Expanded(
              flex: 9,
              child: Container(
                color: grey,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
              )),
        ]));
  }
}
