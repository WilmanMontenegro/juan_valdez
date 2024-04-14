import 'package:flutter/material.dart';

class Img extends StatelessWidget {
    final String imagePath;

  Img({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: MediaQuery.of(context).size.width * 0.95, // 90% del ancho de la pantalla
      alignment: Alignment.center,
    );
  }
}