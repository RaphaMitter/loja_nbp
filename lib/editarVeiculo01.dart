
import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'contatos.dart'; // Importar a tela ContatoPage
import 'editarPerfil.dart'; // Importar a tela EditProfileScreen (do arquivo editarPerfil.dart)
import 'chat.dart';
import 'ajuda.dart';
import 'perfil.dart';
import 'favoritos.dart';
import 'meusCarros.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditarVeiculoScreen(),
    );
  }
}
 
class EditarVeiculoScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Editar veículo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextField(
                label: 'QUAL É O MODELO DO SEU VEÍCULO?',
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'QUAL É O ANO DO VEÍCULO?',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'QUAL É A CIDADE DO VEÍCULO?',
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'QUAL É O ANO DO VEÍCULO?',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'KILOMETRAGEM',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'MOTORIZAÇÃO',
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'CÂMBIO',
              ),

               SizedBox(height: 16),
              CustomTextField(
                label: 'COMBUSTIVEL',
              ),

               SizedBox(height: 16),
              CustomTextField(
                label: 'COR DO VEICULO',
              ),

               SizedBox(height: 16),
              CustomTextField(
                label: 'E-MAIL PARA CONTATO',
              ),

               SizedBox(height: 16),
              CustomTextField(
                label: 'TELEFONE PARA CONTATO',
              ),

              SizedBox(height: 16),
              CustomTextField(
                label: 'CARROCERIA',
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Lógica para salvar as alterações
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text('Salvar Alterações'),
              ),
            ],
          ),
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
 
class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
 
  CustomTextField({
    required this.label,
    this.keyboardType = TextInputType.text,
  });
 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.purple),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}