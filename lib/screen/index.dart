import 'package:app_discapacitados/screen/contacto.dart';
import 'package:app_discapacitados/screen/info_util.dart';
import 'package:app_discapacitados/screen/inicio_page.dart';
import 'package:app_discapacitados/screen/tramites.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Index extends StatefulWidget {
  static String id = 'inicio_page';

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int tabIndex = 0;
  final arrIndex = [Inicio(), Tramites(), InfoUtil(), ContactPage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(bottom: 10),
            child: GNav(
                color: Colors.white,
                tabActiveBorder: Border.all(color: Color(0xFF8cc434)),
                gap: 5,
                padding: const EdgeInsets.all(10),
                onTabChange: (value) {
                  setState(() {
                    tabIndex = value;
                  });
                },
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Inicio',
                    iconActiveColor: Color(0xFF8cc434),
                    textColor: Color(0xFF8cc434),
                  ),
                  GButton(
                    icon: Icons.file_open_outlined,
                    text: 'Tramites',
                    iconActiveColor: Color(0xFF8cc434),
                    textColor: Color(0xFF8cc434),
                  ),
                  GButton(
                    icon: Icons.edit_note_outlined,
                    text: 'Info util',
                    iconActiveColor: Color(0xFF8cc434),
                    textColor: Color(0xFF8cc434),
                  ),
                  GButton(
                    icon: Icons.contact_mail_outlined,
                    text: 'Contacto',
                    iconActiveColor: Color(0xFF8cc434),
                    textColor: Color(0xFF8cc434),
                  ),
                ]),
          ),
          backgroundColor: Colors.grey[900],
          body: IndexedStack(
            index: tabIndex,
            children: arrIndex,
          )),
    );
  }
}
