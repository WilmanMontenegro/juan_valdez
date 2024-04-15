import 'package:flutter/material.dart';
import 'package:juan_valdez/widgets/parrafo.dart';
import 'widgets/header.dart';
import 'widgets/image_rounded.dart';
import 'widgets/parrafo.dart';
import 'widgets/pie_de_pagina.dart';

class Internacionalizacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width *
              0.90, // 95% del ancho de la pantalla
          alignment: Alignment.centerLeft,
          child: Text(
            'Internacionalización',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color(0xFFD70021),
                fontFamily: 'Sanomat',
                fontWeight: FontWeight.w300,
                fontSize: 36),
          ),
        ),
        SizedBox(height: 50),
        Parrafo(
            texto:
                "Considerando la relevancia que la expansión de la marca Juan Valdez® tendrá a nivel mundial en los próximos años, se está trabajando en desarrollar un marco de gobernanza internacional de sostenibilidad y valor compartido para la operación global. De esta manera, se busca expandir la estrategia de triple impacto en todos los mercados en los que la marca tiene presencia con el objetivo de que la expansión internacional mantenga los atributos que caracterizan al negocio en Colombia."),
        SizedBox(height: 30),
        ImgRounded(imagePath: 'assets/images/j1.jpg'),
        SizedBox(height: 30),
        Parrafo(
            texto:
                'Por esta razón, durante el 2022 se realizó en un primer momento el mapeo de las prácticas ESG (Ambientales, Sociales y de Gobernanza por sus siglas en inglés) en los países donde la compañía tiene operación. Posteriormente, se realizó la priorización de los países con los cuales se iniciaría el proceso de internacionalización. En un trabajo transversal entre el área internacional y el área de sostenibilidad, se escogieron aquellos países donde Procafecol S.A. tiene participación accionaria: España, Chile y Ecuador.'),
        SizedBox(height: 30),
        ImgRounded(imagePath: 'assets/images/j2.jpg'),
        SizedBox(height: 30),
        Parrafo(
            texto:
                'El componente de internacionalización agrupa las acciones que se desarrollan en otras dimensiones, como la plataforma de valor compartido, los compromisos de Race to Zero e iniciativas de economía circular. De hecho, en España se iniciaron actividades enmarcadas dentro de la premisa del programa Reusamos todo lo que sea posible, con la reutilización de materiales para la fabricación de mobiliario para las tiendas. Del mismo modo, en Chile y Ecuador se promueve el programa Vaso Reúso para disminuir los residuos generados en la operación de las tiendas. Adicional a las actividades mencionadas, en el evento Expo-Dubai desarrollado en Emiratos Árabes Unidos, Procafecol S.A. participó con un stand durante aproximadamente 8 meses utilizando acabados de construcción certificados por la empresa ACEMAR, que garantiza que la madera utilizada sea Cradle to Cradle®. También se llevaron a Dubai lámparas fabricadas por artesanos colombianos.'),
        PieDePagina(),
      ])),
    );
  }
}
