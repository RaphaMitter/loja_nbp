import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'perfil.dart';
import 'chat.dart';
import 'favoritos.dart';
import 'meusCarros.dart';
import 'detalhesMoto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroVeiculoScreen01(),
    );
  }
}

class CadastroVeiculoScreen01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar-se para Venda'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do motorista/dono do veículo',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é a marca do veículo?',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o modelo do veículo?',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o ano de fabricação?',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Quilometragem atual',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Estado de conservação',
                border: OutlineInputBorder(),
              ),
            ),

              SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Carroceria',
                border: OutlineInputBorder(),
              ),
            ),

              SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cambio',
                border: OutlineInputBorder(),
              ),
            ),

             SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Combustivel',
              ),
            ),

             SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cor do Veiculo',
                border: OutlineInputBorder(),
              ),
            ),

               SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Motorização',
                border: OutlineInputBorder(),
              ),
            ),

            
               SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail para contato',
                border: OutlineInputBorder(),
              ),
            ),

            
               SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Telefone para contato',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Valor desejado',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação ao enviar
              },
              child: Text('Cadastrar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
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
