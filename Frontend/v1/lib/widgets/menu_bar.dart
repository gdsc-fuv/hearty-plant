import 'package:flutter/material.dart';
import '../constants/images.dart'; 
 
class VerticalAppBar extends StatelessWidget {
  const VerticalAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Add Icon")
      ],
    );
  }
}