import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static String id = 'register_screen';

  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
              'Registrarse',
              style: TextStyle(
                  color: Color(0xFF8cc434),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(children: [
              _textField('Nombre', Icons.person_3_outlined),
              _textField('Correo Electronico', Icons.email_outlined),
              _textField('Telefono', Icons.phone),
              _textField('Fecha Nacimiento', Icons.calendar_month_outlined),
              _textField('Domicilio', Icons.location_city_outlined),
              _textField('Usuario', Icons.person_4_outlined),
              _textField('Contraseña', Icons.password_outlined),
              const SizedBox(
                height: 20,
              ),
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
                          'Registro Completado Con Exito',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Activa tu cuenta en tu Correo!',
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
                        horizontal: 45, vertical: 15)),
                child: const Text('Enviar',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'O',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: const Text(
                    '¡Ingrese Aqui!',
                    style: TextStyle(color: Color(0xFF8cc434)),
                  )),
            ])
          ],
        )),
      ),
    );
  }

  Widget _textField(labelU, iconU){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(iconU, color: const Color(0xFF8cc434)),
          labelText: labelU,
          labelStyle: const TextStyle(color: Color(0xFF8cc434)),

        ),
      ),
    );
  }
}
