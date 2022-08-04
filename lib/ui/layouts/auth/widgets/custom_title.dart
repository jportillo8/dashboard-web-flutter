import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(
          'logom.png',
          width: 150,
          height: 150,
        ),
        SizedBox(height: 20),
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            ' Engineering\nIn Every Pixel',
            style: GoogleFonts.montserratAlternates(
                fontSize: 43, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
