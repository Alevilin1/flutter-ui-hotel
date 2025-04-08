import 'package:flutter/material.dart';
import 'package:flutter_hotel/models/modelo_hotel.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponenteEstrela extends StatelessWidget {
  final List<Hotel> list;
  final int index;
  const ComponenteEstrela({required this.index, required this.list, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF4D5652).withOpacity(0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Text(
          "⭐ ${list[index].estrelas.toString()}",
          style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
