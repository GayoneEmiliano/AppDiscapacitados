import 'package:app_discapacitados/screen/detalle_envento.dart';
import 'package:flutter/material.dart';

class InfoUtil extends StatefulWidget {
  static String id = 'inicio_page';

  @override
  _InfoUtilState createState() => _InfoUtilState();
}

class _InfoUtilState extends State<InfoUtil> {
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
            'Proximos Eventos y/o Encuentros',
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
              decoration: const BoxDecoration(
                  //border: Border(bottom: BorderSide(color: Colors.grey))
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Flexible(
                      child: TextField(
                      decoration: InputDecoration(
                        labelText: 'BUSCAR',
                        labelStyle: TextStyle(color: Colors.grey)),
                      style: TextStyle(color: Colors.grey),
                  )),
                  Icon(
                    Icons.search_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _cardEventos('Trabajo en Conjunto con Instituciones de Allen'),
            _cardEventos('Trabajo en Conjunto con Instituciones de Allen'),
            _cardEventos('Trabajo en Conjunto con Instituciones de Allen'),
          ])
        ],
      )),
    );
  }

  Widget _cardEventos(label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF8cc434)),
          borderRadius: BorderRadius.circular(15)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(label,
            style: const TextStyle(color: Color(0xFF8cc434), fontSize: 18)),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '15/03 - 25/03',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DetalleEvento()));
                
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8cc434),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              child: const Text('Ver mas!',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ],
        )
      ]),
    );
  }
}


/*onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Color(0xFF8cc434))),
                  backgroundColor: Colors.grey[900],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             SizedBox(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Image(image: AssetImage('logo.png')),
                                    Text(
                                      'Consejo del Discapacitado',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ]),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  const[
                            Text(
                              '15/03 - 25/03',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(height: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Trabajo en Conjunto con Instituciones de Allen',
                              style: TextStyle(
                                  color: Color(0xFF8cc434),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'El Consejo del Discapacitado del 15 al 25 de marzo se encontrará trabajando con las instituciones intermedias de la Localidad de Allen, si tenes alguna inquietud podés contactarnos por este medio, nos dejas tu inquietud y podemos concretar un encuentro.',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),*/