import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView(
      children: [
        ListTile(
          title: Text("Mi Estado"),
          leading: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
              DecorationImage(image: AssetImage("assets/miperfil.png")),
            ),
          ),
          subtitle: Text("Añade una actualizacion"),
          onTap: () {
            print("Agregregar Estados");
          },
        ),
        //damos un espaciado -Estados Recientes
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, bottom: 15),
          child: Text("Recientes"),
        ),

        //estado Reciente 2
        ListTile(
          title: Text("Ragnar"),
          leading: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/estado1.png")),
            ),
          ),
          subtitle: Text("Hoy 5:44 a.m."),
          onTap: () {
            print("Estado 1");
          },
        ),

        //estado Reciente 2
        ListTile(
          title: Text("Bjorn Lothbrok"),
          leading: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/estado2.png")),
            ),
          ),
          subtitle: Text("ayer 10:41 p.m."),
          onTap: () {
            print("Estado 2");
          },
        ),
        //estado Reciente 3
        ListTile(
          title: Text("Ladgerda"),
          leading: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/estado3.png")),
            ),
          ),
          subtitle: Text("ayer 9:05 p.m."),
          onTap: () {
            print("Estado 3");
          },
        ),

        //damos un espaciado -Estados Vistos
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, bottom: 15),
          child: Text("Vistos"),
        ),

        //estados Vistos
        //estado visto 1
        ListTile(
          title: Text("Donna Paulsen"),
          leading: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/visto1.png"),
              ),
            ),
          ),
          subtitle: Text("ayer 4:07 p.m."),
          onTap: () {
            print("Estado visto 1");
          },
        ),

        //estado visto 2
        ListTile(
          title: Text("Athelsan"),
          leading: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/visto2.png"),
              ),
            ),
          ),
          subtitle: Text("ayer 9:30 p.m."),
          onTap: () {
            print("Estado visto 2");
          },
        ),

        //estado visto 2
        ListTile(
          title: Text("Mike Ross"),
          leading: Container(
            width: 50,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/visto3.png"),
              ),
            ),
          ),
          subtitle: Text("ayer 9:10 p.m."),
          onTap: () {
            print("Estado visto 3");
          },
        ),
      ],
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

void _cambiarllamadasPantalla(BuildContext context) {
  Navigator.of(context).pushNamed("/llamadas");
}*/