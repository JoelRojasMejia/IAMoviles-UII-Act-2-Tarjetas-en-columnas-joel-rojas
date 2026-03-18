import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boutique Cards',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const BoutiquePage(),
    );
  }
}

class BoutiquePage extends StatelessWidget {
  const BoutiquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boutique'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          BoutiqueCard(
            imageUrl: 'https://raw.githubusercontent.com/JoelRojasMejia/imagenes/refs/heads/main/1600817327622_bulletin.jfif',
            title: 'Chaqueta Louis Vuitton',
            subtitle: 'Elegancia urbana',
          ),
          BoutiqueCard(
            imageUrl: 'https://raw.githubusercontent.com/JoelRojasMejia/imagenes/refs/heads/main/32300482_62382768_1000.webp',
            title: 'Gorra balenciaga',
            subtitle: 'Urbano',
          ),
          BoutiqueCard(
            imageUrl: 'https://raw.githubusercontent.com/JoelRojasMejia/imagenes/refs/heads/main/images%20(1).jfif',
            title: 'Anillo Chrome Hearts',
            subtitle: 'Joyeria',
          ),
          BoutiqueCard(
            imageUrl: 'https://raw.githubusercontent.com/JoelRojasMejia/imagenes/refs/heads/main/images.jfif',
            title: 'Pulso Chrome Hearts',
            subtitle: 'Joyeria Sofisticada',
          ),
          BoutiqueCard(
            imageUrl: 'https://raw.githubusercontent.com/JoelRojasMejia/imagenes/refs/heads/main/stock_nike-sb-dunk-low-pro-qs-neckface-24-11-2022-00-36-35.jpeg',
            title: 'Nike SB Dunk',
            subtitle: 'URBANO',
          ),
        ],
      ),
    );
  }
}

class BoutiqueCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const BoutiqueCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            // Imagen izquierda (igual estructura que tu ejemplo)
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl,
                width: 120,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            // Texto derecha
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}