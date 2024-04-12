import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Carrusel extends StatefulWidget {
  @override
  _CarruselState createState() => _CarruselState();
}

class _CarruselState extends State<Carrusel> {
  final CarouselController carouselController = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> imagesList = [
      'assets/images/slider1.jpg',
      'assets/images/slider2.gif',
      'assets/images/slider3.jpg',
      'assets/images/slider4.gif',
      'assets/images/slider5.jpg',
    ];
    return Stack(
      children: <Widget>[
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            viewportFraction: 1, //separacion entre las imagenes
            height: 540, //altura del carrusel
            autoPlay: true, // se reproduce automatico
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imagesList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width*0.95, // ajusta este valor según tus necesidades
                  child: Image.asset(
                    i,
                    fit: BoxFit.contain,// que se ajuste a su contendor sin perder relacion de aspecto
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          top:  540*0.5-(50/2),//mitad exacta
          left: 0,
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.angleLeft,
              color: Colors.white,
            ),
            onPressed: () => carouselController.previousPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear),
          ),
        ),
        Positioned(
          top: 540*0.5-(50/2),//mitad exacta 
          right: 0,
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.angleRight,
              color: Colors.white,
            ),
            onPressed: () => carouselController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear),
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DotsIndicator(
              dotsCount: imagesList.length,
              position: _currentIndex.toInt(),
              decorator: DotsDecorator(
                size: const Size.square(7.0),
                activeColor: Colors.black,
                color: Colors.grey,
                spacing: EdgeInsets.all(4.0),
                activeShape: CircleBorder(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
