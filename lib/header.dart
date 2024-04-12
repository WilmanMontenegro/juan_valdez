import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize, // aquí puedes cambiar la altura a tu gusto
      child: AppBar(
        flexibleSpace: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100.0, // puedes cambiar la altura a tu gusto
                color: Color(0xFFD70021),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                // contenedor de la imagen del logo
                width: MediaQuery.of(context).size.width * 0.22,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                          0.5), // sombra de color negro con 50% de opacidad
                      spreadRadius:
                          1, // se expande 1px en todas las direcciones
                      blurRadius: 5, // difumina la sombra en un radio de 5px
                      offset: Offset(1, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/logo.jpg', // reemplaza esto con la ruta de tu imagen
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.cartShopping,
              color: Colors.white,
            ),
            onPressed: () {
              // Acción al presionar el icono
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            ),
            onPressed: () {
              // Acción al presionar el icono
            },
          ),
          IconButton(
            icon: Row(
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.earthAmericas,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0), // Espacio entre el icono y el texto
                Container(
                  width: 60.0, // Ancho del texto
                  child: Text(
                    'JV en el mundo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            onPressed: () {
              // Acción al presionar el icono
            },
          ),
          IconButton(
            icon: Container(
              padding: EdgeInsets.all(2.0), // Espacio entre el icono y el borde
              decoration: BoxDecoration(
                color: Colors.white, // Relleno blanco
                border:
                    Border.all(color: Colors.white, width: 2.0), // Borde blanco y tamaño del borde
                    borderRadius: BorderRadius.circular(4.0),
              ),
              child: FaIcon(
                FontAwesomeIcons.bars,
                color: Color(0xFFD70021), // Color del icono
              ),
            ),
            onPressed: () {
              // Acción al presionar el icono
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0); // altura del appbar
}
