import 'package:app_discapacitados/screen/contacto.dart';
import 'package:app_discapacitados/screen/info_util.dart';
import 'package:app_discapacitados/screen/tramites.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Inicio extends StatefulWidget {
  static String id = 'inicio_page';

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  int tabIndex = 0;
  final arrIndex = [
    Inicio(), Tramites(), InfoUtil(), ContactPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('logo.png'),
              const Text(
                'Consejo del Discapacitado',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'ACA QUE PINGO PONEMOS?',
            style: TextStyle(
                color: Color(0xFF8cc434),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(children: const [])
        ],
      )),
    );
  }
}
