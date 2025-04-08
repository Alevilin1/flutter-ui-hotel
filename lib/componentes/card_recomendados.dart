import 'package:flutter/material.dart';
import 'package:flutter_hotel/componentes/componente_estrela.dart';
import 'package:flutter_hotel/models/modelo_hotel.dart';
import 'package:google_fonts/google_fonts.dart';

class CardRecomendados extends StatelessWidget {
  final List<Hotel> hotel;
  final int index;
  const CardRecomendados({required this.hotel, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.white,
                  Color(0xFFF5F5F5),
                ])),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.7, //DKDS
                    height: MediaQuery.of(context).size.height / 6,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                                fit: BoxFit.cover, hotel[index].imagem),
                          ),
                        ),
                        Positioned.fill(
                            child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Colors.transparent,
                                const Color(0xFF2A5A52).withOpacity(0.5)
                              ],
                                  stops: const [
                                0.0,
                                1,
                              ])),
                        )),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ComponenteEstrela(index: index, list: hotel),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text(
                        hotel[index].nome,
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.trending_up,
                        color: Colors.blue,
                        size: 13,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Oferta quente!",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
