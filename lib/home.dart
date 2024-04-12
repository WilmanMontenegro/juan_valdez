import 'package:flutter/material.dart';
import 'header.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // es el widget que me da la estructura inicial, me permite aañdir un appBar, un body y un bottomNavigationBar
      appBar: CustomAppBar(),
      body: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1.01,//separacion entre tarjetas
          height: MediaQuery.of(context).size.height*0.54,//altura del carouselS
        ),
        items: [
          'assets/images/slider1.jpg',
          'assets/images/slider2.gif',
          'assets/images/slider3.jpg',
          'assets/images/slider4.gif',
          'assets/images/slider5.jpg',
        ].map((i) {
          return Builder(
            //crea un widget para cada imagen que este
            builder: (BuildContext context) {
              return Container(
                child: Image.asset(
                  i,
                ),
              );
            },
          );
        }).toList(),
      ),
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
