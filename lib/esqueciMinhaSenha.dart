import 'package:flutter/material.dart';
import 'esqueciMinhaSenhaToken.dart';
 
class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png', // Substituir pelo caminho correto do logotipo
          height: 50,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              "Esqueci minha senha",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            _buildTextField("E-MAIL", TextInputType.emailAddress),
            SizedBox(height: 15),
            _buildTextField("CELULAR", TextInputType.phone),
            SizedBox(height: 15),
            _buildTextField("SENHA", TextInputType.visiblePassword, obscureText: true),
            SizedBox(height: 15),
            _buildTextField("CONFIRMAR NOVA SENHA", TextInputType.visiblePassword, obscureText: true),
            SizedBox(height: 15),
            _buildTextField("CÓDIGO DE IDENTIFICAÇÃO", TextInputType.number),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionButton("Confirmar", Colors.green, () {
                  // Adicionar ação de confirmar
                }),
                _buildActionButton("Voltar", Colors.red, () {
                  // Adicionar ação de voltar
                }),
                _buildActionButton("Enviar token", Colors.blue, () {

                  onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasswordScreen1()),

                  );

                };
                 
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
 
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
 
  Widget _buildActionButton(String label, Color color, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: color, fontSize: 16),
      ),
    );
  }
}
 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForgotPasswordScreen(),
  ));
}