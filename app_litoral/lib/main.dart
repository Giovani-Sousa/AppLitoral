import 'package:app_litoral/pele.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia Litoral SP',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
      routes: {
        '/roteiropele': (context) => const PeleScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guia Litoral SP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF2CCD9D),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/PaginaInicial (1).jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SectionCarouselWidget(
              title: 'Hotéis',
              items: [
                {'image': 'img/DPNY.jpg', 'name': 'DPNY Beach Hotel & SPA', 'location': 'Ilhabela'},
                {'image': 'img/Catalina.jpg', 'name': 'Catalina Hotel', 'location': 'Ubatuba'},
                {'image': 'img/Maui.jpg', 'name': 'Maui Maresias', 'location': 'São Sebastião'},
              ],
            ),
            const SectionCarouselWidget(
              title: 'Restaurantes',
              items: [
                {'image': 'img/Alcides Restaurante.jpg', 'name': 'Alcides Restaurante', 'location': 'Guarujá'},
                {'image': 'img/Bens.jpg', 'name': 'Bens Bar & Comidaria', 'location': 'Ubatuba'},
                {'image': 'img/Jirêh.jpg', 'name': 'Jirêh Bar e Cozinha Prática', 'location': 'Ilhabela'},
              ],
            ),
            const SectionCarouselWidget(
              title: 'O que fazer',
              items: [
                {'image': 'img/RoteiroPelé (1).jpg', 'name': 'Tour Privativo do Pelé: O Rei do Futebol', 'location': 'Santos'},
                {'image': 'img/MergulhoIlhaBela .png', 'name': 'Batismo de Mergulho', 'location': 'Ilhabela'},
                {'image': 'img/RapelPauba (1).png', 'name': 'Rapel em Paúba', 'location': 'São Sebastião'},
              ],
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}

class SectionCarouselWidget extends StatefulWidget {
  final String title;
  final List<Map<String, String>> items;

  const SectionCarouselWidget({required this.title, required this.items});

  @override
  _SectionCarouselWidgetState createState() => _SectionCarouselWidgetState();
}

class _SectionCarouselWidgetState extends State<SectionCarouselWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              enlargeCenterPage: true,
              autoPlay: false, 
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.items.map((item) {
              return GestureDetector(
                onTap: () {
                  if (item['name'] == 'Tour Privativo do Pelé: O Rei do Futebol') {
                    Navigator.pushNamed(context, '/roteiropele');
                  } else {}
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item['image']!),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item['name']!,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(item['location']!),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.items.map((url) {
              int index = widget.items.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                      : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2CCD9D),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Política de privacidade',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Termos de Uso',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Ajuda',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: () {},
              ),
            ],
          ),
          const Text('@Copyright'),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> item = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(item['name']!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(item['image']!),
            const SizedBox(height: 20),
            Text(
              item['name']!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              item['location']!,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
