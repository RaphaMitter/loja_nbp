import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'contatos.dart'; // Importar a tela ContatoPage
import 'editarPerfil.dart'; // Importar a tela EditProfileScreen (do arquivo editarPerfil.dart)
import 'chat.dart';
import 'ajuda.dart';
import 'perfil.dart';
import 'favoritos.dart';
import 'meusCarros.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'MEU PERFIL',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.purple,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.amber,
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Emanuel Silva',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'E-mail: silvavendedor@gmail.com',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Telefone: 11 94058–3058',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Modificação no 'PERFIL' para navegação
                _buildListItem(Icons.person, 'PERFIL', onTap: () {
                  // Navega para a página de edição de perfil ao clicar
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfileScreen()),
                  );
                }),
                _buildListItem(Icons.favorite, 'MEUS FAVORITOS', onTap: () {
                  // Navega para a página de ajuda ao clicar
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoritosPage()),  // Navigate to AjudaScreen
                  );
                }),
                _buildListItem(Icons.directions_car, 'MEUS CARROS', onTap: () {
                  // Navega para a página de ajuda ao clicar
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MeusCarrosScreen()),  // Navigate to AjudaScreen
                  );
                }),
                _buildListItem(Icons.help_outline, 'AJUDA', onTap: () {
                  // Navega para a página de ajuda ao clicar
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AjudaApp()),  // Navigate to AjudaScreen
                  );
                }),
                _buildListItem(
                  Icons.contact_mail, 
                  'ENTRE EM CONTATO CONOSCO', 
                  onTap: () {
                    // Navega para a página de contato ao clicar
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContatoPage()),
                    );
                  }
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

  Widget _buildListItem(IconData icon, String title, {Function()? onTap}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.black54),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Icon(Icons.chevron_right, color: Colors.black54),
          onTap: onTap ?? () {}, // Defina a ação de navegação aqui
        ),
        Divider(height: 1, color: Colors.grey[300]),
      ],
    );
  }
}
