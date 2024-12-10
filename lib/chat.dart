import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'perfil.dart';
import 'chat.dart';
import 'favoritos.dart';
import 'meusCarros.dart';
import 'chatMessagens.dart';
 
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
                  'assets/NBPR.png', // Substitua pelo caminho correto do logo.
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
            GestureDetector(
            onTap: () {
             Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatScreen02()),
            );
           },
            child: ChatTile(name: 'Fulano', time: '09:00'),
            ),
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
