import 'package:flutter/material.dart';
import 'package:flutter_hotel/componentes/card_facilidades.dart';
import 'package:flutter_hotel/models/modelo_hotel.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaInfo extends StatefulWidget {
  final Hotel hotel;
  const PaginaInfo({required this.hotel, super.key});

  @override
  State<PaginaInfo> createState() => _PaginaInfoState();
}

class _PaginaInfoState extends State<PaginaInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(24)),
                width: 350,
                height: 370,
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Image.network(
                            fit: BoxFit.cover, widget.hotel.imagem)),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          IconButton.filled(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ButtonStyle(
                                  backgroundColor: const WidgetStatePropertyAll(
                                      Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)))),
                              icon: const Icon(
                                Icons.keyboard_arrow_left,
                                size: 24,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 12, right: 26),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.hotel.nome,
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Ver no mapa",
                      style: GoogleFonts.montserrat(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  child: Text(
                    maxLines: 6,
                    widget.hotel.descricao,
                    style: GoogleFonts.montserrat(fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  //color: Colors.red,
                  height: MediaQuery.of(context).size.height / 8,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.hotel.facilidades!.length,
                    itemBuilder: (context, index) {
                      var facilidades = widget.hotel.facilidades;
                      return ComponenteFacilidade(
                          facilidades: facilidades!, index: index);
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Preço",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "  RS1299",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.green),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: const WidgetStatePropertyAll(5),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14)),
                                ),
                                backgroundColor:
                                    const WidgetStatePropertyAll(Colors.blue)),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Reservar agora",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 15),
                                ),
                                const Icon(
                                  Icons.arrow_right,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
