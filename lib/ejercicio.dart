import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartelera de Cine - Arcos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarteleraScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CarteleraScreen extends StatelessWidget {
  final List<Pelicula> peliculas = [
    Pelicula(
      titulo: 'Kung Fu Panda 4',
      descripcion:
          'Un ladrón que roba secretos corporativos a través del uso de tecnología de sueño compartido...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001988?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Garfield',
      descripcion:
          'Un grupo de exploradores viaja a través de un agujero de gusano en el espacio...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001918?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Viejas amigas',
      descripcion:
          'Batman se enfrenta al Joker, un criminal que siembra el caos en Gotham City...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001978?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Amigos imaginarios',
      descripcion:
          'Un hacker descubre la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00002004?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Los extraños',
      descripcion:
          'La vida de dos sicarios, un boxeador, la esposa de un gánster y un par de bandidos se entrelazan en cuatro historias de violencia y redención...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00002019?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Furiosa',
      descripcion:
          'Un oficinista con insomnio y un vendedor de jabón forman un club de lucha subterráneo que se convierte en algo mucho más...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001927?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Amigos imaginarios',
      descripcion:
          'Un hacker descubre la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00002004?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Los extraños',
      descripcion:
          'La vida de dos sicarios, un boxeador, la esposa de un gánster y un par de bandidos se entrelazan en cuatro historias de violencia y redención...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00002019?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
    Pelicula(
      titulo: 'Furiosa',
      descripcion:
          'Un oficinista con insomnio y un vendedor de jabón forman un club de lucha subterráneo que se convierte en algo mucho más...',
      imagenUrl:
          'https://cdn.apis.cineplanet.com.pe/CDN/media/entity/get/FilmPosterGraphic/HO00001927?referenceScheme=HeadOffice&allowPlaceHolder=true',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cartelera de Cine',
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images5.fanpop.com/image/photos/26600000/Inception-3-inception-2010-26665678-1920-1080.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.4,
            ),
            itemCount: peliculas.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                        child: Image.network(
                          peliculas[index].imagenUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        peliculas[index].titulo,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: Text(
                          peliculas[index].descripcion,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Pelicula {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  Pelicula({
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });
}
