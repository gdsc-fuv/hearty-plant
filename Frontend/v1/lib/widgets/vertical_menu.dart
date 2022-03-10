import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/constants/color.dart';

import 'custom_text.dart';

class VertticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const VertticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  get menuController => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap(),
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? minor_color.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: menuController.returnIconFor(itemName),
                          ),
                          if (!menuController.isActive(itemName))
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: menuController.isHovering(itemName)
                                  ? Colors.white
                                  : minor_color,
                              size: 30,
                              weight: FontWeight.bold,
                            ))
                          else
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: Colors.white,
                              size: 18,
                              weight: FontWeight.bold,
                            ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
