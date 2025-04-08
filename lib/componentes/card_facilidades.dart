import 'package:flutter/material.dart';
import 'package:flutter_hotel/models/modelo_facilidades.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponenteFacilidade extends StatelessWidget {
  final List<Facilidades> facilidades;
  final int index;
  const ComponenteFacilidade(
      {required this.facilidades, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFF176FF2).withOpacity(0.05),
                  const Color(0xFF196EEE).withOpacity(0.1),
                ]),
            borderRadius: BorderRadius.circular(28)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              facilidades[index].icone,
              color: Colors.grey,
              size: 30,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              facilidades[index].nome,
              style: GoogleFonts.montserrat(fontSize: 14),
            )
            //Text(facilidades![index].nome)
          ],
        ),
      ),
    );
  }
}
