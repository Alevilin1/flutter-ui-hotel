import 'package:flutter/material.dart';
import 'package:flutter_hotel/pages/pagina_hoteis.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      primary: false,
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/montanha.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    const Color(0xFF211B1C).withOpacity(0.1),
                    const Color(0xFF3B5969).withOpacity(0.7),
                  ],
                      stops: const [
                    0.6,
                    1.0
                  ])),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 130,
              ),
              Text(
                "ASPEN",
                style: GoogleFonts.montez(
                    fontSize: 85,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 311,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Planeje suas",
                        style: GoogleFonts.montserrat(
                            fontSize: 24, color: Colors.white),
                      ),
                      SizedBox(
                        child: Text(
                          "Ferias\nLuxuosas",
                          style: GoogleFonts.montserrat(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: const ButtonStyle(
                            elevation: WidgetStatePropertyAll(5),
                            shape:
                                WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13)),
                            )),
                            minimumSize: WidgetStatePropertyAll(Size(311, 51)),
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xFF176FF2))),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PaginaHoteis()),
                            (route) => false,
                          );
                        },
                        child: Text(
                          "Explorar",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
