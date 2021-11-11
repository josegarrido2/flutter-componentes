// en este archivo se crea una instancia única
// de la clase _MenuProvider
//

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> listOfRutasFrommapJson = [];
  _MenuProvider() {}

  Future<List<dynamic>> cargarData() async {
    final jsonDataAsString = await rootBundle.loadString('data/menu_opts.json');

    Map<String, dynamic> mapJson = json.decode(jsonDataAsString);

    print('------provider mapJson-----');
    print(mapJson);
    print('------provider listOfRutasFrommapJson-----');
    listOfRutasFrommapJson = mapJson['rutas'];
    print(listOfRutasFrommapJson);
    print('------provider-----');

    return listOfRutasFrommapJson;
  }
}

final menuProvider = new _MenuProvider();
