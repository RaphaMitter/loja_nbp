import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetalhesVeiculoScreen(),
    );
  }
}
 
class DetalhesVeiculoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo no topo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/logo.png', // Substitua pelo caminho correto do logo.
                  height: 50,
                ),
              ),
            ),
 
            // Imagem do veículo
            Container(
              margin: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/veiculo.jpg', // Substitua pelo caminho da imagem.
                  fit: BoxFit.cover,
                ),
              ),
            ),
 
            // Título e preço
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'YAMAHA FZ25',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'R\$ 35.000,00',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
 
            // Informações do veículo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Modelo: FZ25',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text('Ano: 2021/2022'),
                  Text('Quilometragem: 15.000'),
                  Text('Motorização: 250cc'),
                  Text('Câmbio: Manual'),
                  Text('Carroceria: Street'),
                  Text('Combustível: Flex'),
                  Text('Cor: Vermelho'),
                ],
              ),
            ),
 
            // Descrição do dono
            Container(
              color: Colors.purple,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'DESCRIÇÃO DO DONO\n\n'
                'Veículo impecável, sem observações! IPVA 2024/2025 pago, único dono, oportunidade única!!\n\n'
                'Informações importantes: Sem observações!',
                style: TextStyle(color: Colors.white),
              ),
            ),
 
            // Contato
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CONTATO',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('E-mail: silvavendedor@gmail.com'),
                  Text('Telefone: 11 94058-3058'),
                ],
              ),
            ),
 
            // Botão "Entrar em contato"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Ação ao clicar no botão
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                child: Text(
                  'Entrar em contato',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
 
            // Menu inferior
            BottomNavigationBar(
              backgroundColor: Colors.purple,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Início',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.directions_car),
                  label: 'Veículos',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Perfil',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}