import 'package:flutter/material.dart';
import 'package:juan_valdez/widgets/images.dart';
import 'widgets/header.dart';
import 'widgets/carrusel.dart';
import 'widgets/contadores.dart';
import 'widgets/images.dart';
import 'widgets/redes_sociales.dart';
import 'widgets/pie_de_pagina.dart';

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
                Images(),
                PieDePagina()
              ],
            ),
          ),
          RedesSociales(),
        ],
      ),
      
    );
  }
}
