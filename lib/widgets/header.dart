import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../home.dart';
import '../quienes_somos.dart';
import '../cambio_climatico.dart';
import '../internacionalizacion.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 100,
                  color: Color(0xFFD70021),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/logo.jpg',
                  ),
                ),
              ),
              Positioned(
                top: 23,
                right: 0,
                child: Row(
                  children: <Widget>[
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
                          SizedBox(width: 10.0),
                          Container(
                            width: 60.0,
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
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.bars,
                          color: Color(0xFFD70021),
                        ),
                      ),
                      onPressed: () {
                        showMenu(
                          context: context,
                          position:
                              RelativeRect.fromLTRB(MediaQuery.of(context).size.width, 140.0, 0.0, 0.0),
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
                              child: Text('Cambio Climático'),
                              value: 3,
                            ),
                            PopupMenuItem(
                              child: Text('Internacionalización'),
                              value: 4,
                            ),
                          ],
                          elevation: 8.0,
                        ).then((value) {
                          if (value != null) {
                            switch (value) {
                              case 1:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                                break;
                              case 2:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuieneSomos()),
                                );
                                break;
                              case 3:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CambioClimatico()),
                                );
                                break;
                              case 4:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Internacionalizacion()),
                                );
                                break;
                            }
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(135.0);
}
