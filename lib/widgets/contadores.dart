import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'contador.dart';

class Contadores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Contador(numeroFinal: 250, texto: 'Tiendas en Colombia'),
      Row(
        children: <Widget>[
          Expanded(
              child: Contador(numeroFinal: 195, texto: 'Tiendas Internacionales')),
          //SizedBox(width: 20),
          Expanded(
              child: Contador(numeroFinal: 2500, texto: 'Colaboradores')),
        ],
      ),
    ]);
  }
}
