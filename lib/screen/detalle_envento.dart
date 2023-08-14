import 'package:flutter/material.dart';

class DetalleEvento extends StatefulWidget {
  const DetalleEvento({super.key});

  @override
  State<DetalleEvento> createState() => _DetalleEventoState();
}

class _DetalleEventoState extends State<DetalleEvento> {
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Trabajo en conjunto con Instituciones de Allen',
                style: TextStyle(
                    color: Color(0xFF8cc434),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF8cc434)),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        '15/03 - 25/03',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'El Consejo del Discapacitado del 15 al 25 de marzo se encontrará trabajando con las instituciones intermedias de la Localidad de Allen, si tenes alguna inquietud podés contactarnos por este medio, nos dejas tu inquietud y podemos concretar un encuentro.',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Image(image: AssetImage('hospital.jpeg')),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
              )
            ]),
            ElevatedButton(
              onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => const DetalleEvento()));
                
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8cc434),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              child: const Text('Volver',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
