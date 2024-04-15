import 'package:flutter/material.dart';

class Parrafo extends StatelessWidget {
  final String texto;

  Parrafo({required this.texto});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width *
            0.90, // 95% del ancho de la pantalla
        child: Text(
          texto,
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontFamily: 'Sanomat',
              fontWeight: FontWeight.w400,
              fontSize: 17 // puedes cambiar esto al tamaño de fuente que deseas
              ),
        ),
      ),
    );
  }
}
