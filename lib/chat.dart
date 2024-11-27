import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'perfil.dart';
import 'chat.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}
 
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Logo e título
          Container(
            color: Colors.purple,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset(
                  'assets/logo.png', // Substitua pelo caminho correto do logo.
                  height: 50,
                ),
                SizedBox(width: 16),
                Text(
                  'Chat NBPR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
 
          // Lista de conversas
          Expanded(
            child: ListView(
              children: [
                ChatTile(name: 'Fulano', time: '09:00'),
                ChatTile(name: 'Fulano', time: '10:20'),
                ChatTile(name: 'Ciclano', time: '11:00'),
                ChatTile(name: 'Ciclano', time: '12:00'),
                ChatTile(name: 'Beltrano', time: '13:00'),
                ChatTile(name: 'Beltrano', time: '15:00'),
              ],
            ),
          ),
        ],
      ),
 
      // Menu inferior
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Veículos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
 
class ChatTile extends StatelessWidget {
  final String name;
  final String time;
 
  const ChatTile({
    Key? key,
    required this.name,
    required this.time,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(name),
      trailing: Text(time),
    );
  }
}
