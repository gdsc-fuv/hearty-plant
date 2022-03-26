import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/appBar.dart';
import 'package:responsive_dashboard/widget/deviceWidget.dart';
import 'package:responsive_dashboard/widget/header.dart';
import 'package:responsive_dashboard/widget/rightSide.dart';
import 'package:responsive_dashboard/widget/leftSide.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';
import 'package:responsive_dashboard/widget/sensorWidget.dart';
import 'package:responsive_dashboard/widget/test.dart';

import 'helpers/rightSideHeading.dart';
import 'model/sensor.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Sensor pHSensor = Sensor(1, "pH", 1);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState.openDrawer();
                  },
                  icon: Icon(Icons.menu, color: AppColors.black)),
              actions: [
                AppBarActionItems(),
              ],
            )
          : PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
                flex: 10,
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Header(),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // PrimaryText(
                                //   text: 'SENSORS',
                                //   size: 20,
                                //   fontWeight: FontWeight.w800,
                                // ),
                                rightHeading("SENSORS"),
                              ],
                            ),
                            // PrimaryText(
                            //   text: 'Sensor Data',
                            //   size: 16,
                            //   fontWeight: FontWeight.w400,
                            //   color: AppColors.secondary,
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            alignment: WrapAlignment.spaceAround,
                            children: [
                              // SensorWidget(label: 'pH', data: '7.0'),
                              // SensorWidget(label: 'TDS', data: '3000'),
                              // SensorWidget(label: 'Light', data: '7500'),
                              // SensorWidget(label: 'Temperature', data: '27C'),
                              SensorWidgets(
                                pHSensor,
                                size: 200,
                              ),
                              SensorWidgets(
                                Sensor(
                                  2,
                                  'pH',
                                  43,
                                ),
                                size: 200,
                              ),
                              SensorWidgets(
                                Sensor(
                                  32,
                                  'TDS',
                                  43,
                                ),
                                size: 200,
                              ),
                              // SizedBox(
                              //   height: SizeConfig.blockSizeVertical * 4,
                              // ),
                              SensorWidgets(
                                Sensor(
                                  32,
                                  'TDS',
                                  43,
                                ),
                                size: 200,
                              ),
                              SensorWidgets(
                                Sensor(
                                  32,
                                  'Temperature',
                                  43,
                                ),
                                size: 200,
                              ),
                              SensorWidgets(
                                Sensor(
                                  32,
                                  'Temperature',
                                  43,
                                ),
                                size: 200,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                rightHeading("DEVICES"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            alignment: WrapAlignment.spaceAround,
                            children: [
                              DevicesWidgets_1("Main pump", "assets/pump.png"),
                              DevicesWidgets_1(
                                  "Solenoid valve 1", "assets/valve.png"),
                              DevicesWidgets_1(
                                  "Solenoid valve 2", "assets/valve.png"),
                              DevicesWidgets_1(
                                  "Solenoid valve 3", "assets/valve.png"),
                              DevicesWidgets_1("Main Pump", "assets/pump.png"),
                              DevicesWidgets_1(
                                  "Solenoid valve 1", "assets/valve.png"),
                              DevicesWidgets_1(
                                  "Solenoid valve 2", "assets/valve.png"),
                              DevicesWidgets_1(
                                  "Solenoid valve 3", "assets/valve.png"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3,
                        ),
                        if (!Responsive.isDesktop(context)) rightSide()
                      ],
                    ),
                  ),
                )),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 5,
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: SizeConfig.screenHeight,
                    decoration: BoxDecoration(color: AppColors.secondaryBg),
                    child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      child: Column(
                        children: [
                          AppBarActionItems(),
                          rightSide(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
