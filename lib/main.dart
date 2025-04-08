import 'package:flutter/material.dart';
import 'package:flutter_hotel/pages/pagina_inicial.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: true,
    statusBarColor: Colors.transparent.withOpacity(0.002),
    systemNavigationBarColor: Colors.white,
    //systemNavigationBarDividerColor: Colors.transparent.withOpacity(0.002),
    //systemNavigationBarIconBrightness: Brightness.dark,
    //statusBarIconBrightness: Brightness.dark
  ));

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: PaginaInicial(),
      ),
    );
  }
}
