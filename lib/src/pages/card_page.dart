import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[_cardTipo1(), 
        _cardTipo2(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        _cardTipo2(),
        SizedBox(height: 30.0,),
        

        ]
        ,
        
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Soy el título de esta tarjeta"),
            subtitle: Text(
                "Aquí estamos con la descripción de la tarjeta que quiero que ustedes vean para que tengan una idea de lo que quiero mostrarles"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
              TextButton(
                child: Text("ok"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
        child: Column(children: <Widget>[
      //Text("hola"),
      FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          fadeInDuration: Duration(milliseconds: 500),
          fit: BoxFit.contain),
      //Image(          image: NetworkImage(              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),

      Container(padding: EdgeInsets.all(10.0), child: Text("adios")),
    ]));

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 0.0,
            spreadRadius: 1.0,
            offset: Offset(0.0,0.0)
          ),
        ],
      ),
      child: ClipRRect(child: card, borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
