import 'package:flutter/material.dart';

class llamadasPage extends StatelessWidget {
   llamadasPage({Key? key}) : super(key: key);

  List<String> nombre = [
    "Ladgerda",
    "Rollo",
    "Athelsan",
    "Harvey Specter",
    "Rachel Zane",
  ];

  List<String> fechah = [
    "23 de mayo 8:01 a.m.",
    "(2) 22 de mayo 11:04 a.m.",
    "17 de mayo 10:25 a.m.",
    "14 de mayo 10:29 p.m",
    "12 de mayo 2:21 p.m.",

  ];
  List<String> nombre2 = [
    "Luis Litt",
    "Jessica Pears",
    "Dana Scott",
    "Samantha w",
    "Zoe Lawford",
  ];
  List<String> fechah2 = [
    "23 de mayo 8:01 a.m.",
    "(2) 22 de mayo 11:04 a.m.",
    "17 de mayo 10:25 a.m.",
    "14 de mayo 10:29 p.m",
    "12 de mayo 2:21 p.m.",
  ];
  @override
  Widget build(BuildContext context) => Scaffold(

      body: ListView.builder(
        itemCount: nombre.length,
        itemBuilder: (BuildContext context, int index) {
          final nombres = nombre[index];
          final fh = fechah[index];
          final nombres2 = nombre2[index];
          final fh2 = fechah2[index];

          return Column(
            children: [
              ListTile(
                title: Text(nombres),
                leading: Icon(
                  Icons.person,
                  size: 50,
                ),
                trailing: Icon(
                  Icons.phone,
                  size: 20,
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.green,
                    ),
                    Text(fh),
                  ],
                ),
                onTap: () {
                  print(nombres);
                },
              ),
              //llamadas perdidas
              ListTile(
                title: Text(nombres2),
                leading: Icon(
                  Icons.person,
                  size: 50,
                ),
                trailing: Icon(
                  Icons.phone,
                  size: 20,
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Colors.red,
                    ),
                    Text(fh2),
                  ],
                ),
                onTap: () {
                  print(nombres2);
                },
              ),
            ],
          );
        },
      ),
  );
}
/*
void _add() {
  print("Proximamente");
}

void _cambiarPrimerPantalla(BuildContext context) {
  Navigator.of(context).pushNamed("/");
}

void _cambiarSegundaPantalla(BuildContext context) {
  Navigator.of(context).pushNamed("/second");
}
*/