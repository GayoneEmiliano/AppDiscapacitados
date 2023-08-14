import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Tramites extends StatefulWidget {
  static String id = 'tramites_page';

  @override
  _TramitesState createState() => _TramitesState();
}

class _TramitesState extends State<Tramites> {
  int tabIndex = 0;
  static const arrIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
            'Certificado Unico de Discapacidad',
            style: TextStyle(
                color: Color(0xFF8cc434),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8cc434),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 15)),
                child: Row(
                  children: const [
                    Text('Subir Documentacion',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.file_upload_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Planillas sobre Discapacidad',
                style: TextStyle(
                    color: Color(0xFF8cc434),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)
            ),
            const SizedBox(height: 20,),
            Column(
              children: [
                _containerPlanillas('Visceral Enfermedades'),
                _containerPlanillas('Hematologicos sppd'),
                _containerPlanillas('Esclerosis Multiple'),
                _containerPlanillas('Transtorno general del desarrollo'),
                _containerPlanillas('Pautas de desarrollo madurativo'),
                _containerPlanillas('Planilla general sppd'),
              ],
            )
          ])
        ],
      )),
    );
  }

  Widget _containerPlanillas(label) {
    return (Container(
      margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10 ),
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF8cc434)),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    ));
  }
}
