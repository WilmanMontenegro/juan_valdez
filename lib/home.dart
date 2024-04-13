import 'package:flutter/material.dart';
import 'header.dart';
import 'widgets/carrusel.dart';
import 'widgets/contadores.dart';
import 'widgets/redes_sociales.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // es el widget que me da la estructura inicial, me permite añadir un appBar, un body y un bottomNavigationBar
      appBar: CustomAppBar(),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Carrusel(),
                Contadores(),
              ],
            ),
          ),
          RedesSociales(),
        ],
      ),
      
    );
  }
}
