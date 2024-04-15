import 'package:flutter/material.dart';

class ImgRounded extends StatelessWidget {
  final String imagePath;

  ImgRounded({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // puedes ajustar el valor para cambiar el radio de las esquinas redondeadas
      child: Image.asset(
        imagePath,
        width: MediaQuery.of(context).size.width * 0.95, // 90% del ancho de la pantalla
        alignment: Alignment.center,
      ),
    );
  }
}