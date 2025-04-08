import 'package:flutter/material.dart';
import 'package:flutter_hotel/componentes/componente_estrela.dart';
import 'package:flutter_hotel/models/modelo_hotel.dart';
import 'package:flutter_hotel/pages/pagina_informacoes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class CardHotel extends StatelessWidget {
  final List<Hotel> melhoresHoteis;
  final int index;
  const CardHotel({
    required this.melhoresHoteis,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.9,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.fade,
              child: PaginaInfo(hotel: melhoresHoteis[index])));
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Positioned.fill(
                child: Image.network(
                    fit: BoxFit.cover, melhoresHoteis[index].imagem),
              ),
              Positioned.fill(
                  child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color(0xFF2A5A52).withOpacity(0.7)
                      ],
                      stops: const [
                        0.0,
                        1,
                      ]),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          //color: const Color(0xFF4D5652),
                          color: const Color(0xFF4D5652).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Text(
                          melhoresHoteis[index].nome,
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ComponenteEstrela(index: index, list: melhoresHoteis),
                        Container(
                          height: 25,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: const Icon(
                            Icons.favorite,
                            size: 18,
                            color: Colors.red,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
