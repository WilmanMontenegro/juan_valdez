import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../home.dart';
import '../quienes_somos.dart';
import '../cambio_climatico.dart';
import '../internacionalizacion.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize, 
      // aquí puedes cambiar la altura a tu gusto
      child: AppBar(
        automaticallyImplyLeading: false, // oculta el botón de retroceso
        flexibleSpace: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100, // puedes cambiar la altura a tu gusto
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
                border: Border.all(
                    color: Colors.white,
                    width: 2.0), // Borde blanco y tamaño del borde
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: FaIcon(
                FontAwesomeIcons.bars,
                color: Color(0xFFD70021), // Color del icono
              ),
            ),
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(
                    100.0, 100.0, 0.0, 0.0), // puedes cambiar la posición aquí
                items: <PopupMenuEntry>[
                  PopupMenuItem(
                    child: Text('Inicio'),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text('Quienes Somos'),
                    value: 2,
                  ),
                   PopupMenuItem(
                    child: Text('Quienes Somos'),
                    value: 3,
                  ),
                   PopupMenuItem(
                    child: Text('Internacionalización'),
                    value: 4,
                  ),

                  // puedes agregar más opciones aquí
                ],
                elevation: 8.0,
              ).then((value) {
                if (value != null) {
                  // manejar la selección del menú aquí
                  switch (value) {
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuieneSomos()),
                      );
                      break;
                      case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CambioClimatico()),
                      );
                      break;
                      case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Internacionalizacion()),
                      );
                      break;
                    // puedes agregar más casos aquí para otras opciones
                  }
                }
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0); // altura del appbar
}
