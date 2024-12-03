import 'package:flutter/material.dart';
import 'perfil.dart';
import 'chat.dart';
import 'favoritos.dart';
import 'meusCarros.dart';
import 'principal_Um.dart';

class CarDetailsScreen01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Image.asset(
          'assets/NBPR.png', // Substitua pelo caminho do logotipo
          height: 40,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem principal do carro
            Image.asset('assets/pologts.jpg'), // Substitua pela imagem do carro
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'VW POLO GTS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    'R\$ 100,000.00',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Detalhes do carro
                  Text(
                    'Modelo: Polo GTS',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Ano: 2024/2025',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Kilometragem: 6.000',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Motorização: 2.0 Turbo',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Câmbio: Automático',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Combustível: Gasolina',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Carroceria: Hatch',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Cor: Preto',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  // Descrição do dono
                  Container(
                    color: Colors.purple,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'DESCRIÇÃO DO DONO\n'
                      'Veículo impecável, sem observações! IPVA 2024/2025 pago, único dono, oportunidade única!! '
                      'Informações importantes: Sem observações!',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Contato
                  Container(
                    color: Colors.purple,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CONTATO',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'E-mail: silvavendedor@gmail.com',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Text(
                          'Telefone: 11 94058-3058',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () {
                  // Ação ao clicar no botão
                },
                child: const Text(
                  'Entrar em contato',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),

       bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Colors.purple,
           type: BottomNavigationBarType.fixed,
             selectedItemColor: Colors.white,
               unselectedItemColor: Colors.white70,
             items: [
                BottomNavigationBarItem(

            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrincipalUm()),
                );
              },
              child: Icon(Icons.home),
      
              ),
               label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritosPage()),
                );
              },
              child: Icon(Icons.favorite),
      
              ),
               label: 'Favoritos',
          ),

          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MeusCarrosScreen()),
                );
              },
              child: Icon(Icons.directions_car),
      
              ),
               label: 'Meus Carros',
          ),


          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Icon(Icons.mail),
      
              ),
               label: 'Chat',
          ),

          BottomNavigationBarItem(
              icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PerfilPage()),
                );
              },
              child: Icon(Icons.person),
      
              ),
               label: 'Perfil',
          ),

          
        ],
      ),
    );
  }
}
