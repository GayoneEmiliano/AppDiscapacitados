import 'package:app_discapacitados/screen/index.dart';
import 'package:app_discapacitados/screen/register_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              'Ingresar',
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
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.person_4_outlined,
                        color: Color(0xFF8cc434),
                      ),
                      hintText: 'ejemplo@gmail.com',
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: 'Correo Electronico',
                      labelStyle: TextStyle(color: Color(0xFF8cc434))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const TextField(
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.password_outlined,
                        color: Color(0xFF8cc434),
                      ),
                      labelText: 'Contraseña',
                      labelStyle: TextStyle(color: Color(0xFF8cc434))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Index()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8cc434),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 15)),
                child: const Text('Iniciar Sesion',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: const Text(
                    '¡Registrese Aqui!',
                    style: TextStyle(color: Color(0xFF8cc434)),
                  )),
            ])
          ],
        )),
      ),
    );
  }
}
