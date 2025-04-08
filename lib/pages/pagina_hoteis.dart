import 'package:flutter/material.dart';
import 'package:flutter_hotel/componentes/card_hotel.dart';
import 'package:flutter_hotel/componentes/card_recomendados.dart';
import 'package:flutter_hotel/componentes/componente_texto.dart';
import 'package:flutter_hotel/data/lista_hoteis.dart';
import 'package:flutter_hotel/models/modelo_hotel.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaHoteis extends StatefulWidget {
  const PaginaHoteis({super.key});

  @override
  State<PaginaHoteis> createState() => _PaginaHoteisState();
}

class _PaginaHoteisState extends State<PaginaHoteis> {
  @override
  void initState() {
    super.initState();
    //hoteis.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    List<Hotel> melhoresHoteis =
        hoteis.where((hotel) => hotel.estrelas >= 4).toList();
    List<Hotel> recomendadoHoteis =
        hoteis.where((hotel) => hotel.avaliacao >= 8).toList();

    return Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white,
                  const Color(0xAA2A6BBD).withOpacity(0.3)
                  /*Colors.white,
                  const Color.fromARGB(57, 240, 236, 248).withOpacity(0.4),
                  const Color(0xAA2A6BBD).withOpacity(0.4)*/
                ],
                    stops: const [
                  0.90, // 0.88
                  1.0
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Explore",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_sharp,
                                size: 16,
                                color: Colors.blue,
                              ),
                              Text(
                                "Brasil",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue,
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        " Aspen",
                        style: GoogleFonts.montserrat(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    const Color(0xFFA8CCF0).withOpacity(0.2)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    const Color(0xFFA8CCF0).withOpacity(0.2)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFA8CCF0)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        floatingLabelStyle: const TextStyle(color: Colors.blue),
                        prefixIcon: const Icon(Icons.search),
                        label: const Text("Procure o seu hotel"),
                        filled: true,
                        fillColor: const Color(0xFFE3E9F0).withOpacity(0.8)),
                  ),
                ),
                const ComponenteTexto(texto: "Popular"),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 3.4,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: melhoresHoteis.length,
                        itemBuilder: (context, index) {
                          return CardHotel(
                              melhoresHoteis: melhoresHoteis, index: index);
                        }),
                  ),
                ),
                const ComponenteTexto(
                  texto: "Recomendados",
                  top: 12,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: recomendadoHoteis.length,
                      itemBuilder: (context, index) {
                        var hotel = recomendadoHoteis;
                        return CardRecomendados(hotel: hotel, index: index);
                      }),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child:
              BottomNavigationBar(backgroundColor: Colors.white, items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  size: 25,
                  color: Colors.blue,
                ),
                icon: Icon(
                  Icons.home_outlined,
                  size: 25,
                  color: Colors.grey,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                  size: 25,
                  color: Colors.grey,
                ),
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 25,
                ),
                label: "Favoritos"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.grey,
                ),
                icon: Icon(
                  Icons.person_outline,
                  size: 25,
                  color: Colors.grey,
                ),
                label: "Perfil"),
          ]),
        ));
  }
}


/*

BottomNavigationBar(items: [
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: "Home"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: "Favoritos"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Perfil"),
      ]),*/