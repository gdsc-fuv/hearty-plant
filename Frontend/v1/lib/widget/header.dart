import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

import '../config/size_config.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // colorBackground:
            // decoration: BoxDecoration(color: AppColors.secondaryBg),
            children: [
              // PrimaryText(
              //     text: 'Hearty Plant', size: 48, fontWeight: FontWeight.w800),
              Container(
                child: Image.asset('assets/logo.png'),
              ),
            ]),
      ),
      Spacer(
        flex: 1,
      ),
      // Expanded(
      //   flex: Responsive.isDesktop(context) ? 1 : 3,
      //   child: TextField(
      //     decoration: InputDecoration(
      //       filled: true,
      //       fillColor: AppColors.white,
      //       contentPadding: EdgeInsets.only(left: 40.0, right: 5),
      //       enabledBorder: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(30),
      //         borderSide: BorderSide(color: AppColors.white),
      //       ),
      //       focusedBorder: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(30),
      //         borderSide: BorderSide(color: AppColors.white),
      //       ),
      //       // prefixIcon: Icon(Icons.search, color: AppColors.black),
      //       // hintText: 'Search',
      //       // hintStyle: TextStyle(color: AppColors.secondary, fontSize: 14)
      //     ),
      //   ),
      // ),
    ]);
  }
}
