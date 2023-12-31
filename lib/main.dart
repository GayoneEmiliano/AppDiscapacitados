import 'package:app_discapacitados/screen/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: Login.id,
      routes: {
        Login.id : (context) => Login()
      },
    );
  }
}
