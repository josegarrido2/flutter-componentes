

import 'package:componentes/src/provider/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context,
            AsyncSnapshot<List<dynamic>> listOfRutasFrommapJson) {
          print('------homepage-----');
          print(listOfRutasFrommapJson.data);
          print('------homepage-----');

          return ListView(
              children: _listaItems(listOfRutasFrommapJson.data, context));
        });

//menuProvider.cargarData();

    // return ListView(

    //   children: _listaItems(),

    // );
  }

  List<Widget> _listaItems(
      List<dynamic> listOfRutasFrommapJson, BuildContext context) {
    final List<Widget> opciones = [];




    listOfRutasFrommapJson.forEach((mapRuta) {
      final widgetTemp = ListTile(
        title: Text(mapRuta['texto']),
        //leading: Icon(Icons.account_circle, color: Colors.blue),
        leading: getIcon(mapRuta['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

          Navigator.pushNamed(context,mapRuta['ruta']);
          

          
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(context, route);



        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;

    // return [

    //   ListTile(title:Text("hola mundo")),
    //   Divider(),
    //   ListTile(title:Text("hola mundo")),
    //   Divider(),
    //   ListTile(title:Text("hola mundo")),
    //   Divider()

    // ];
  }
}
