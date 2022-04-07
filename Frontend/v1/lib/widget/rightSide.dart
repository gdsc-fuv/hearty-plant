import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/helpers/rightSideHeading.dart';
import 'package:responsive_dashboard/style/img.dart';
import 'package:responsive_dashboard/style/style.dart';
import 'package:google_fonts/google_fonts.dart';
import '../style/colors.dart';

class rightSide extends StatelessWidget {
  const rightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      VegetableArea(),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
      ModeArea(),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
      GrownArea(),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
      TimeSettingArea(),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
    ]);
  }
}

class VegetableArea extends StatelessWidget {
  const VegetableArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rightHeading("VEGETABLE TYPE"),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical,
        ),
        Center(
          child: Container(
            child: Image.asset('assets/cabbage.png'),
          ),
        ),
        Center(
          child: Text(
            "Cabbage",
            style: GoogleFonts.lato(
                color: AppColors.primaryGreen,
                fontWeight: FontWeight.w600,
                fontSize: 48),
          ),
        ),
      ],
    );
  }
}

class ModeArea extends StatelessWidget {
  const ModeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        rightHeading("MODE"),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            modeContainer("Add Water", Image.asset("assets/invention.png"),
                AppColors.white),
            modeContainer("Grow", grow_mode, AppColors.primaryGreen),
            modeContainer("Harvest", harvest_mode, AppColors.white),
            modeContainer("Cleaning", cleaning_mode, AppColors.white)
          ],
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class modeContainer extends StatelessWidget {
  final String modeString;
  final Image modeImg;
  final Color modeColor;
  const modeContainer(@required this.modeString, @required this.modeImg,
      @required this.modeColor);

  get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 71,
          width: 71,
          decoration: BoxDecoration(
            color: modeColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x28274c77),
                blurRadius: 10.11,
                offset: Offset(0, 5.05),
              ),
            ],
          ),
          child: Center(child: modeImg)),
      SizedBox(
        height: SizeConfig.blockSizeVertical,
      ),
      Text(modeString,
          style: GoogleFonts.lato(
            color: AppColors.iconGray,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ))
    ]);
  }
}

class GrownArea extends StatelessWidget {
  const GrownArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        rightHeading("SET DAY GROWN"),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Container(
          height: 46,
          width: 330,
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 11,
            bottom: 13,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x28274c77),
                blurRadius: 10.11,
                offset: Offset(0, 5.05),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset("assets/clock.png"),
              SizedBox(
                width: 3,
              ),
              Text("30 DAYS",
                  style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF014519))),
              SizedBox(width: 3),
              Spacer(),
              Text(
                "(DEFAULT)",
                style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFB1B3BE)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Text(
          "15 Days left to harvest",
          style: GoogleFonts.lato(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color(0xff004519)),
        ),
      ],
    );
  }
}

class TimeSettingArea extends StatelessWidget {
  const TimeSettingArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        rightHeading("SET DAY TIME"),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Container(
                height: 46,
                width: 120,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 11,
                  bottom: 13,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x28274c77),
                      blurRadius: 10.11,
                      offset: Offset(0, 5.05),
                    ),
                  ],
                ),
                child: Row(children: [
                  Image.asset("assets/clock.png"),
                  SizedBox(
                    width: 3,
                  ),
                  Text("6:00AM",
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF014519))),
                ])),

            SizedBox(width: 10),
            //rightHeading("to"),
            SizedBox(width: 10),
            Container(
              height: 46,
              width: 120,
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 11,
                bottom: 13,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28274c77),
                    blurRadius: 10.11,
                    offset: Offset(0, 5.05),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset("assets/clock.png"),
                  SizedBox(
                    width: 3,
                  ),
                  Text("6:00PM",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF014519),
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
