import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Contador extends StatefulWidget {
  final String texto;
  final int numeroFinal;

  Contador({required this.texto, required this.numeroFinal});
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3), // La duración de la animación
      vsync:
          this, // para que se sincronice con la tasa de refresco de la pantalla
    );

    _animation =
        IntTween(begin: 0, end: widget.numeroFinal).animate(_controller)
          ..addListener(() {
            setState(() {
              // Esto causa que el widget se reconstruya con cada tick de la animación
            });
          });

    _controller.forward(); // Inicia la animación
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Asegúrate de limpiar el controlador cuando el widget sea eliminado
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints
              .maxWidth, //ocupar todo el ancho disponible que le proporciona su widget padre
          height: 110,
          color: Color(0xFFFFF5F2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                NumberFormat.decimalPattern()
                    .format(_animation.value), // El número animado
                style: TextStyle(
                  color: Color(0xFFD70021),
                  fontSize: 40, // Puedes personalizar el tamaño del texto aquí
                  fontFamily: 'Aftika', // Usa la fuente sans-serif
                  fontWeight: FontWeight.w800, // Usa un peso de fuente fuerte
                ),
                textAlign: TextAlign.center,
              ),
              FractionallySizedBox(
                widthFactor:
                    0.8, // El ancho es el 80% del ancho del widget padre
                child: Text(
                  widget.texto,
                  style: TextStyle(
                    color: Color(0xFF411016),
                    fontSize: 16,
                    fontFamily: 'Aftika',
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
