import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/style/colors.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    Key? key,
  }) : super(key: key);

  get secondary => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            icon: SvgPicture.asset(
              'assets/settings.svg',
              width: 20,
            ),
            onPressed: () {}),
        SizedBox(width: 10),
        IconButton(
            icon: Image.asset('assets/noti.png', width: 20.0),
            onPressed: () {}),
        SizedBox(width: 15),
        Row(children: [
          CircleAvatar(
            radius: 17,
            backgroundColor: secondary,
            backgroundImage: NetworkImage(
              'https://images.heb.com/is/image/HEBGrocery/000374791',
            ),
          ),
          Icon(Icons.arrow_drop_down_outlined, color: AppColors.black)
        ]),
      ],
    );
  }
}
