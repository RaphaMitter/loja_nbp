
import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'perfil.dart';
import 'chat.dart';
import 'favoritos.dart';
import 'meusCarros.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen02(),
    );
  }
}

class ChatScreen02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Minhas Mensagens"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Bem-vindo ao nosso sistema. Por favor, informe o modelo e quilometragem do veículo.",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Ok! Meu veículo é um Fiat Palio 2012 com 120.000 km.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Muito obrigado pelas informações. Já encaminhamos ao setor responsável para análise.",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Escreva sua mensagem...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Ação ao enviar mensagem
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  child: Icon(Icons.send, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
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
