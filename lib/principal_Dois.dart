import 'package:flutter/material.dart';

void main() {
  runApp(CarListingApp());
}

class CarListingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarListingScreen(),
    );
  }
}

class CarListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar with logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50), // Placeholder para manter o alinhamento
                  Image.asset(
                    'assets/logo.png', // Adicione sua logo
                    height: 50,
                  ),
                ],
              ),
            ),
            // Lista de carros
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  CarCard(
                    imageUrl: 'assets/car1.jpg', // Adicione imagens aos assets
                    title: 'VW POLO GTS',
                    description: '1.4 TSI Turbo - Automático\n2022/2023 - Preto',
                    price: 'R\$ 105.000,00',
                    location: 'São Paulo/SP',
                  ),
                  SizedBox(height: 16),
                  CarCard(
                    imageUrl: 'assets/car2.jpg',
                    title: 'PEUGEOT 208',
                    description: '1.6 Allure - Automático\n2022/2022 - Branco',
                    price: 'R\$ 98.500,00',
                    location: 'Rio de Janeiro/RJ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String price;
  final String location;

  const CarCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Car image
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Ver Oferta'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
