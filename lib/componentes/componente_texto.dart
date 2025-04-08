import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponenteTexto extends StatelessWidget {
  final String texto;
  final double top;
  final double left;
  final double right;
  final double bottom;
  const ComponenteTexto(
      {required this.texto,
      this.top = 22,
      this.left = 22,
      this.right = 22,
      this.bottom = 4,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            texto,
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Ver todos",
            style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.blue[400]),
          )
        ],
      ),
    );
  }
}
