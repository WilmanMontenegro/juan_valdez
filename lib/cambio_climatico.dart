import 'package:flutter/material.dart';
import 'widgets/pie_de_pagina.dart';
import 'widgets/header.dart';
import 'widgets/pie_de_pagina.dart';

class CambioClimatico extends StatelessWidget {
  const CambioClimatico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/cafetal.jpg'),
            const  SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPaint(
                  painter: RedLinePainter(lineWidth: 2.0, lineLength: 125.0),
                ),

                Container(
                    width: 140, // Ancho de la imagen
                  ),

                Image.asset('assets/images/Imagen1.png', width: 35),

                Container(
                  width: 20
                ),

                CustomPaint(
                  painter: RedLinePainter(lineWidth: 2.0, lineLength: 125.0),
                  child: Container(
                    width: 125, // Ancho de la imagen
                  )
                )
              ]
            ),
            const  SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                'Línea del tiempo',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'MarrSansCondensed-Semibold',
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            const  SizedBox(height: 15),
            Image.asset('assets/images/linea_de_tiempo.png'),
            const  SizedBox(height: 30),
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.asset('assets/images/riegoCafe.jpg', fit: BoxFit.cover)
            ),
            const  SizedBox(height: 30),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 40),
                  alignment: Alignment.bottomLeft,
                  child: const Text('Race to Zero', style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'aftika-bold')),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Con el objetivo de aportar con el cumplimiento del Acuerdo de París, el cual busca asegurar que el aumento de la temperatura del planeta no supere los 1.5 grados Celsius para el año 2050, Procafecol S.A. se adhirió a la campaña global Race to Zero durante el Festival Global Citizen en septiembre de 2022 en Nueva York. Dicho festival reunió en Accra (Ghana) y en Nueva York (EE.UU.) a artistas, líderes mundiales, empresarios y ciudadanos en favor del fin de la pobreza extrema y la lucha contra el cambio climático.'
                        , style: TextStyle(fontFamily: 'Aftika',fontWeight: FontWeight.w600, fontSize: 13)
                        , textAlign: TextAlign.justify
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Esta campaña busca que los participantes logren un 50% de reducciones a 2030 y el balance cero a 2050. El plan con metas de reducción a corto, mediano y largo plazo deberá ser radicado en los próximos 24 meses, contando desde septiembre de 2022, mes en el que se hizo el compromiso con Race to Zero'
                        , style: TextStyle(fontFamily: 'Aftika', fontSize: 13,fontWeight: FontWeight.w600)
                        , textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 30),
                      Image.asset('assets/images/raceToZero.png'),
                      const SizedBox(height: 15),
                      const Text(
                        'Por ende, para el año 2023 se propone la activación del Comité de Cambio Climático para hacer seguimiento a la implementación del Plan de Reducción de Emisiones. Este tendrá un espacio dentro del ya existente Comité de Sostenibilidad. Finalmente, se puede ver como un logro la creación del Comité de Gobierno Corporativo y Sostenibilidad dentro de la Junta Directiva (máximo órgano de gobierno), con el cual se busca dar mayor relevancia y visibilidad a las acciones de la organización en términos de sostenibilidad.'
                        , style: TextStyle(fontFamily: 'Aftika',fontSize: 13,fontWeight: FontWeight.w600)
                        , textAlign: TextAlign.justify,
                      )
                    ]
                  ),
                )
              ]
            ),
            const PieDePagina()
          ]
        )
      ),
    );
  }
}

class RedLinePainter extends CustomPainter {
  final double lineWidth; // Grosor de la línea
  final double lineLength; // Longitud de la línea

  RedLinePainter({this.lineWidth = 2.0, this.lineLength = 100.0});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = lineWidth;

    final double halfHeight = size.height / 2;
    final Offset startPoint = Offset(0, halfHeight);
    final Offset endPoint = Offset(lineLength, halfHeight);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}