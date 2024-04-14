import 'package:flutter/material.dart';
import 'image.dart';

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget>[
            Img(imagePath:"assets/images/banner1.jpg"),
            SizedBox(height: 20),
            Img(imagePath:"assets/images/banner2.gif"),
            SizedBox(height: 20),
            Img(imagePath:"assets/images/banner3.jpg"),
        ],
      );
  }
}
