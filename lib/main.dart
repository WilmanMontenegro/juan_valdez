import 'package:flutter/material.dart';
import './proposito.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(home());
}

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(// nuestro primer widget
      home:Scaffold(
        appBar: AppBar(//seria el header
          backgroundColor: Color(0xffd70021),
          actions: const <Widget>[
            Icon(FontAwesomeIcons.cartShopping,
              color: Colors.white,
            ),
            Icon(FontAwesomeIcons.magnifyingGlass,
            color: Colors.white),
            Icon(FontAwesomeIcons.earthAmericas,
            color: Colors.white),
              // Icono en la parte derecha
          ],
        ),
        body: Center(//centrar el texto
          child: Text('cuerpo de la pagina'),//texto
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50.0,
            child: Center(
              child: Text('Pie de página'),
            ),
        ),
      ),
    ),
    );
  }

}