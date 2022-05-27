import 'package:flutter/material.dart';
import 'package:whatsapp_clon/pages/second_page.dart';

import 'llamadas_page.dart';

class MyhomePage extends StatelessWidget {
  //datos
  List<String> names = [
    "Ragnar",
    "Ladgerda",
    "Rollo",
    "Bjorn Lothbrok",
    "Floki",
    "Athelsan",
    "Harvey Specter",
    "Rachel Zane",
    "Mike Ross",
    "Donna Paulsen",
    "Luis Litt",
    "Jessica Pears",
    "Dana Scott",
    "Samantha w",
    "Zoe Lawford"
  ];

  List<String> mensaje = [
    "hola Ragnar",
    "Mañana",
    "Cual",
    "Enserio",
    "Cualquier cosa Me Avisas",
    "sisi XD",
    "I Do not get it",
    "what?",
    "where",
    "which book do you need",
    "i have one",
    "nooo ",
    "Saque 100",
    "claro q no",
    "Viste El Capitulo",
    "noo"
  ];

  List<String> hora = [
    "11:50 am",
    "5:00 pm",
    "ayer",
    "ayer",
    "3:00 am",
    "ayer",
    "5:00 pm",
    "ayer",
    "9:45 pm",
    "3:00 am",
    "11:50",
    "5:00 pm",
    "4:30 am",
    "11:50 pm",
    "9:45 pm",
    "4:30 am"
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              //color de Fondo de Appbar
              backgroundColor: Colors.teal[800],
              //Titulo,tamaño de Nuestro Appbar
              title: Text(
                'WhatsApp',
                style: TextStyle(fontSize: 30,),
              ),
              actions: <Widget>[
                //iconos de botones de nuestro Appbar
                //icono de buscar
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: _add,
                ),

                //icono de configuracion
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    size: 30,
                  ),
                  onPressed: _add,
                ),
              ],

              bottom: TabBar(
                tabs: [
                  Tab(
                      child: Icon(
                    Icons.camera_alt,
                    color: Colors.white54,
                  )),
                  Tab(
                      child: Text(
                    "Chat",
                    style: TextStyle(color: Colors.white60),
                  )),
                  Tab(
                      child: Text(
                    "Estados",
                    style: TextStyle(color: Colors.white60),
                  )),
                  Tab(
                      child: Text(
                    "Llamadas",
                    style: TextStyle(color: Colors.white60),
                  )),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Expanded(
                child: Image.asset("assets/camera.jpeg"),
              ),
              ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  final name = names[index];
                  final men = mensaje[index];
                  final hor = hora[index];
                  return ListTile(
                    title: Text(name),
                    leading: Icon(
                      Icons.person,
                      size: 50,
                    ),
                    trailing: Text(
                      hor,
                      style: TextStyle(fontSize: 9),
                    ),
                    subtitle: Text(men),
                    onTap: () {
                      print(name);
                    },
                  );
                },
              ),
              SecondPage(),
              llamadasPage(),
            ],
          ),
        ),
      );
}

void _add() {
  print("Proximamente");
}
/*
void _cambiarSegundaPantalla(BuildContext context) {
  Navigator.of(context).pushNamed("/second");
}
void _cambiarllamadasPantalla(BuildContext context) {
  Navigator.of(context).pushNamed("/llamadas");
}*/
