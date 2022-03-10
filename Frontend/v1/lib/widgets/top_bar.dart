import 'package:flutter/material.dart';
import 'package:ui_design/constants/color.dart';
import 'package:ui_design/helpers/responsive.dart';
import 'custom_text.dart';

AppBar topBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                    // padding: EdgeInsets.only(left: 14),
                    // child: Image.asset(
                    //   "assets/logos/hplogo.png",
                    //   width: 30,
                    ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
              visible: !ResponsiveWidget.isSmallScreen(context),
              child: CustomText(
                text: "Hearty Plant",
                color: primary_color,
                size: 20,
                weight: FontWeight.bold,
              )),
          Expanded(
            child: Container(),
          ),
          IconButton(
              icon: Icon(
                Icons.settings,
                color: primary_color,
              ),
              onPressed: () {}),
        ],
      ),
      backgroundColor: minor_color,
    );
