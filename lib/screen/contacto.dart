import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  static String id = 'inicio_page';

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int tabIndex = 0;
  static const arrIndex = [];

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
            '¡Contactanos!',
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
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person_4,
                      color: Color(0xFF8cc434),
                    ),
                    labelText: 'Nombre',
                    hintText: 'Escriba su nombre',
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Color(0xFF8cc434))),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email_outlined,
                      color: Color(0xFF8cc434),
                    ),
                    labelText: 'Correo Electronico',
                    hintText: 'Ingrese su correo',
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Color(0xFF8cc434))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 30,
                  height: 40,
                ),
                Icon(
                  Icons.email,
                  color: Color(0xFF8cc434),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mensaje',
                  style: TextStyle(color: Color(0xFF8cc434)),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF8cc434)),
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const TextField(
                maxLines: 7,
                decoration: InputDecoration(
                    labelText: 'Escriba su mensaje aqui...',
                    labelStyle: TextStyle(color: Color(0xFF8cc434))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                   onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Color(0xFF8cc434))
                  ),
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
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(Icons.close, color: Colors.white,),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Gracias por contactarte!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Te enviamos un codigo de verificacion',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: double.maxFinite,
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
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8cc434),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15)),
                  child: const Text('Enviar!',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                const SizedBox(width: 20,)
              ],
            ),
          ])
        ],
      )),
    );
  }
}
