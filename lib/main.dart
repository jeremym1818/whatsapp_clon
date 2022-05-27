import 'package:flutter/material.dart';
import 'package:whatsapp_clon/pages/my_home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyhomePage(),
      /*
     initialRoute: "/",
      routes: {
      //  "/":(BuildContext context)=>MyhomePage(),
        "/second":(BuildContext context)=>SecondPage(),
        "/llamadas":(BuildContext context)=>llamadasPage(),
      },*/
    );
  }
}

