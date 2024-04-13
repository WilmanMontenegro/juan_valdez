import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class RedesSociales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Container(
          height: 40.0,
          color: Color(0xFFD70021),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FaIcon(FontAwesomeIcons.tiktok,color: Colors.white), // Icono de TikTok
              FaIcon(FontAwesomeIcons.facebook,color: Colors.white), // Icono de Facebook
              FaIcon(FontAwesomeIcons.instagram,color: Colors.white), // Icono de Instagram
              FaIcon(FontAwesomeIcons.twitter,color: Colors.white),
              FaIcon(FontAwesomeIcons.linkedin,color: Colors.white), 
              FaIcon(FontAwesomeIcons.youtube,color: Colors.white), 
            ],
          ),// contenido del pie de página
        ),
      ),
    );
  }
}
