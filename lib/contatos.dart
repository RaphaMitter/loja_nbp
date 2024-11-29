import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'perfil.dart';
import 'chat.dart';
import 'favoritos.dart';
import 'meusCarros.dart';
import 'contatoTelefone.dart'; // Importe a classe DialerScreen
import 'email.dart';

class ContatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'ENTRAR EM CONTATO',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            padding: EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            child: Text(
              'ENTRAR EM CONTATO',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildListItem(context, 'CHAT NBPR', ChatScreen() ),
                _buildListItem(context, 'E-MAIL NBPR', FaleConoscoScreen() ),
                _buildListItem(context, 'TELEFONE NBPR', DialerScreen()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // Voltar para a tela anterior
                },
                child: Text(
                  'Voltar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
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

  Widget _buildListItem(BuildContext context, String title, Widget? screen) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Icon(Icons.chevron_right, color: Colors.black54),
          onTap: () {
            if (screen != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen),
              );
            }
          },
        ),
        Divider(height: 1, color: Colors.grey[300]),
      ],
    );
  }
}
