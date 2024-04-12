import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'header.dart';
import 'widgets/carrusel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // es el widget que me da la estructura inicial, me permite aañdir un appBar, un body y un bottomNavigationBar
      appBar: CustomAppBar(),
      body: Carrusel(),
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Este es el footer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
