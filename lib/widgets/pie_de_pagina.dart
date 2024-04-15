import 'package:flutter/material.dart';

class PieDePagina extends StatelessWidget {
  const PieDePagina({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 100),
          CustomPaint(painter: DrawDottedhorizontalline()),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0, bottom: 10),
            child: Text('Términos y Condiciones', style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold))
          ),
          CustomPaint(painter: DrawDottedhorizontalline()),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0, bottom: 10),
            child: Text('Política de Tratamiento de datos', style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold))
          ),
          CustomPaint(painter: DrawDottedhorizontalline()),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0, bottom: 10),
            child: Text('Contáctanos', style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold))
          ),
          CustomPaint(painter: DrawDottedhorizontalline()),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0, bottom: 15),
            child: Text('Linea ética', style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold))
          ),
          const Text('© 2023 Juan Valdez', style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.w500)),
          const Text('Todos los derechos reservados', style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.w500)),
          const Text('Bogotá - Colombia', style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.w500)),
    
          const SizedBox(height: 130),
        ],//drawing horizontal dotted/dash line          
      ),
    );
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  late Paint _paint;
  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint.color = Colors.red; //dots color
    _paint.strokeWidth = 2; //dots thickness
    _paint.strokeCap = StrokeCap.square; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -300; i < 300; i = i + 2) {
      // 15 is space between dots
      if (i % 3 == 0) {
        canvas.drawLine(Offset(i, 0.0), Offset(i + 2, 0.0), _paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}