import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/pie_de_pagina.dart';

class QuieneSomos extends StatelessWidget {
  const QuieneSomos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/quienes_somos.png'),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Procafecol S.A. nace en 2002 con el objetivo de generar negocios de valor agregado para los caficultores y su marca Juan Valdez® que cuenta con cuatro líneas de negocio: Tiendas especializadas, grandes superficies, canal institucional y el portal e-commerce.\n\nNuestra relación con los caficultores colombianos es por varias vías: la primera, es el reconocimiento a la calidad de su café mediante el pago de una prima por calidad; la segunda, es el posicionamiento del café de Colombia en el mundo; y la tercera, es el compromiso permanente de generar valor al Fondo Nacional del Café (FoNC) para la generación de bienes públicos y los proyectos de Sostenibilidad en Acción® de la Federación de Cafeteros de Colombia.\n\nA lo largo de diez años y con importantes inversiones, logramos conformar un equipo sinérgico con conocimiento y experiencia; tenemos más de 300 tiendas operando en Colombia y más de 100 en el mundo, siendo líderes en la categoría de grandes superficies. El Café Premium Colombiano Juan Valdez nos posiciona como la marca más reconocida y admirada en nuestro país, consolidando nuestro modelo de expansión a nuevos mercados en el mundo.'
              , style: TextStyle(color: Color(0xFF7A7A7A), fontFamily: 'aftika-bold' , fontSize: 12)),
            ),

            const SizedBox(height:100),

            Container(
              color: const Color(0xFFFDF3E8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                
                  Image.asset('assets/images/mision.png', width: 160),

                  const SizedBox(height: 20),

                  const MisionVision(texto: 'Cautivamos al mundo con los cafés premium de Colombia generando valor a los caficultores colombianos.', title: 'Misión/El Propósito'),
                  
                  const SizedBox(height: 30),

                  Image.asset('assets/images/mision.png', width: 160),

                  const SizedBox(height: 20),

                  const MisionVision(texto: 'Ser la marca colombiana más reconocida en el mundo, por su crecimiento saludable y su impacto sostenible.', title: 'Visión/Nuestra Ambición'),

                  const SizedBox(height: 120),
                ],
              ),
            ),

            AspectRatio( //Cambiar el tamaño de la imagen (Aspecto)
              aspectRatio: 2.8,
              child: Image.asset('assets/images/cafe.png', fit: BoxFit.cover)
            ),

            Container(
              color: const Color(0xFFFDF3E8),
              child: const Column(
                children: [
                  SizedBox(height: 65),
                  
                  ValoresJuanValdez(title: 'Pasión por el talento.', texto: 'Estamos abiertos a dar y recibir retroalimentación oportuna. Empoderamos y reconocemos a los otros, siendo ejemplo de la puesta en práctica de nuestros valores.'),
                            
                  SizedBox(height: 30),
                
                  ValoresJuanValdez(title: 'Actitud emprendedora.', texto: 'Constantemente buscamos oportunidades de mejora, y proponemos ideas para solucionar problemas. Hacemos que las cosas pasen.'),
                
                  SizedBox(height: 30),
                
                  ValoresJuanValdez(title: 'Agilidad.', texto: 'Tomamos decisiones de manera oportuna en beneficio del cliente. Nos adaptamos y aprendemos rápidamente, y buscamos soluciones prácticas para agregar valor.'),
                
                  SizedBox(height: 30),
                
                  ValoresJuanValdez(title: 'Trabajo en equipo.', texto: 'Creemos en la comunicación abierta y en compartir la información para tomar buenas decisiones. Valoramos el conocimiento de diferentes prácticas para tomar mejores decisiones.'),
                
                  SizedBox(height: 30),
                
                  ValoresJuanValdez(title: 'Orientado a resultados.', texto: 'Creemos en buscar metas retadoras y en alcanzar objetivos cuidando el bienestar propio y de los demás. Nos gusta planear y priorizar para lograr resultados.'),
                
                  SizedBox(height: 30),
                ]
              ),
            ),
            
            Stack(
              children: [
                AspectRatio( //Cambiar el tamaño de la imagen (Aspecto)
                aspectRatio: 2.8,
                child: Image.asset('assets/images/cafe.jpg', fit: BoxFit.cover)
               ),

               const Positioned( //Agregar el texto sobre la Imagen
                top: 30,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Los valores',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'merriweather',
                        color: Colors.white,
                      )
                    ),
                    Text(
                      'que nos guian:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'merriweather',
                        color: Colors.white,
                      )
                    )                    
                  ],
                ),
               )
              ]
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFF6EEE6),
              child: const Column(
                children: [
                  ValoresAdicionales(title: 'Colombianidad', texto: 'Más allá de ser o no ser colombiano, es la identidad y el orgullo de creer y vivirlos elementos más positivos que caracterizan a los colombianos: Pasión por lo que hacemos, amabilidad, espontaneidad y sinceridad, hospitalidad, creatividad, empuje y trabajo duro.'),
                  ValoresAdicionales(title: 'Integridad', texto: 'Encaminar todas nuestras acciones apegados a la honestidad, la verdad, la justicia y la cooperación, tanto en el trato para con los demás como con nosotros mismos. Es hacer lo correcto, aún sin que nadie nos vea, y no hacer lo incorrecto así todo el mundo lo haga.'),
                  ValoresAdicionales(title: 'Servicio', texto: 'Una actitud permanente de colaboración, buscando oportunidades para crear momentos memorables que alegren la vida de otras personas. En Juan Valdez Café el servicio se expresa a través de la calidad, la experiencia y la conexión con nuestro propósito.'),
                  SizedBox(height: 120),
                ]
              )
            ),

            const SizedBox(height: 70),

            const PieDePagina()
          ],
        )
      ),
    ); 
  }
}

class ValoresAdicionales extends StatelessWidget {
  final String title;
  final String texto;
  
  const ValoresAdicionales({
    super.key, required this.title, required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 60),
        Text(title, style: const TextStyle(color: Colors.red, fontSize:25, fontFamily: 'merriweather')),
        
        const SizedBox(height: 12),
        
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 40, right: 40, bottom: 0),
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: const TextStyle(
            color: Color(0xFF7A7A7A),
            fontSize: 13.5,
            fontFamily: 'aftika-extra-light')),
        ),
      ]
    );
  }
}

class ValoresJuanValdez extends StatelessWidget {
  final String title;
  final String texto;
  
  const ValoresJuanValdez({
    super.key, required this.title, required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 16.0), // Ajusta el valor según tus necesidades
          child: Image.asset('assets/images/Screenshot_1.png', width: 35),
        ),

        const SizedBox(height: 12),

        Text(title, style: const TextStyle(color: Colors.red, fontSize:18, fontFamily: 'merriweather')),
        
        const SizedBox(height: 12),
    
        Padding (
          padding: const EdgeInsets.only(top: 0, left: 50, right: 50, bottom: 0),
          child: Text(texto, style: const TextStyle(color: Color(0xFF411016), fontFamily: 'aftika-bold')),
        )
      ],
    );
  }
}

class MisionVision extends StatelessWidget {

  final String title;
  final String texto;
  
  const MisionVision({
    super.key, required this.title, required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10), // Espacio de 20 en cada lado
          child: Container(
            color: Colors.red, // Puedes cambiar el color según tus necesidades
            height: 45, // Altura del Container
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white, 
                  fontFamily: 'merriweather',
                  fontSize: 18
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            texto, 
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF411016),
              fontFamily: 'aftika-bold',
              fontSize: 13.5
            )
          ),
        ),
      ]
    );
  }
}