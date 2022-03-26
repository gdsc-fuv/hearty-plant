import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class rightHeading extends StatelessWidget {
  final String text;
  const rightHeading(@required this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          color: Color(0xFF4EBE76), fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
