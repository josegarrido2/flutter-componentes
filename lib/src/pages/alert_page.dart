import 'dart:js';

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Page")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.food_bank_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Mostrar Alearta"),
          onPressed: ()=>_mostrarAlerta(context),
          ),
      ),
    );
  }


void _mostrarAlerta(BuildContext context){

showDialog(
context: context,
barrierDismissible: true,
builder: (context) {
  return AlertDialog(
    shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0)),


    title: Text("Titulo"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("contenido"),
        FlutterLogo(size:100.0),

      ]
    ),
    actions:[
      ElevatedButton(
        onPressed: ()=>Navigator.of(context).pop(),
        child:Text("Cancelar"),        
        ),
        ElevatedButton(
        onPressed: (){},
        child:Text("OK"),        
        ),
    ]

  );
}

);

}


}
