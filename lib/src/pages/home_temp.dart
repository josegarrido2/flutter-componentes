import 'package:flutter/material.dart';
class HOmePageTemp extends StatelessWidget {
  
final opciones = ['uno','dos','tres','cuatro','cinco'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorto(),

      ),
      
      
    );
  }
////////////////////////////////////////////////////////////////

// List<Widget> _crearItems(){
//   List<Widget> lista = [];
//   for (String opcion in opciones) {
//     final tempWidget = ListTile(
//       title: Text(opcion),
//       subtitle: Text("Cualquier cosa"),
//       leading: Icon(Icons.account_balance),
//       trailing: Icon(Icons.arrow_right),
//       onTap: (){},
//     );
//     lista.add(tempWidget);
//     lista.add(Divider());
//   }
//   return lista;
// }

/////////////////////////////////////////////////////////////


List<Widget> _crearItemsCorto(){
  var widgets = opciones.map(
    ( opcion ) {
    return Column(
      children: [
        ListTile(
          title: Text(opcion+'!') ,
          subtitle: Text("Cualquier cosa"),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.arrow_right),
          onTap: (){},
        ),
        Divider()
      ],
    );
    }
  ).toList();
  return widgets; 
}

// List<Widget> _crearItemsCorto2(){

// List<Widget> widgets = opciones.map(_todaslasopciones).toList();
// return widgets; 

// }

/////////////////////////////////////////////////////////////////////

// ListTile _todaslasopciones(opcion){

// return ListTile(title: Text(opcion+'!!!') ,);

// }

/////////////////////////////////////////////////////////////////////


}

