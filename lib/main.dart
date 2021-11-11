import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routres/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      //home: HomePage(),
      initialRoute: "/",
      routes: getApplicationRoutres(),
      //solo se dispara cuando la ruta no exixte:
      onGenerateRoute: (RouteSettings settings) {

        print ("Ruta llamada: ${settings.name}");
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
          );


      },
    );
  }
}
