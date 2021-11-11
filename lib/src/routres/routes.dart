import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';



Map<String,WidgetBuilder> getApplicationRoutres(){

final rutas = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'alert': (BuildContext context) => AlertPage(),
  'card':  (BuildContext context) => CardPage(),
};

return rutas;


}
