import 'package:flutter/material.dart';
 
class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png', // Substituir pelo caminho correto do logotipo
          height: 40,
        ),
      ),
      body: Column(
        children: [
          // Cabeçalho com imagem de perfil
          Container(
            color: Colors.purple,
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "EDITAR PERFIL",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
 
          // Campos de formulário
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildTextField("NOME DO USUÁRIO", TextInputType.text),
                    SizedBox(height: 15),
                    _buildTextField("E-MAIL", TextInputType.emailAddress),
                    SizedBox(height: 15),
                    _buildTextField("CELULAR", TextInputType.phone),
                    SizedBox(height: 15),
                    _buildTextField("CPF", TextInputType.number),
                    SizedBox(height: 15),
                    _buildTextField("SENHA ATUAL", TextInputType.visiblePassword, obscureText: true),
                    SizedBox(height: 15),
                    _buildTextField("NOVA SENHA", TextInputType.visiblePassword, obscureText: true),
                    SizedBox(height: 30),
                    // Botões de ação
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildActionButton("ATUALIZAR", Colors.green, () {
                          // Lógica para atualizar o perfil
                        }),
                        _buildActionButton("EXCLUIR", Colors.red, () {
                          // Lógica para excluir o perfil
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
 
      // Barra inferior de navegação
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.directions_car), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
 
  // Campo de texto reutilizável
  Widget _buildTextField(String hint, TextInputType inputType, {bool obscureText = false}) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.purple, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.purple, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
 
  // Botão de ação reutilizável
  Widget _buildActionButton(String label, Color color, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EditProfileScreen(),
  ));
}