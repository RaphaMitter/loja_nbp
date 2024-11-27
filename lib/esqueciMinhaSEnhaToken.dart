import 'package:flutter/material.dart';
import 'esqueciMinhaSenhaToken.dart';

 
class ForgotPasswordScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Image.asset(
          'assets/logo.png', // Substituir pelo caminho do logotipo
          height: 40,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              "Seu token é: 59143",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Esqueci minha senha",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
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
                TextButton(
                  onPressed: () {
                    // Adicione a lógica de voltar
                  },
                  child: Text(
                    "Voltar",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Adicione a lógica de envio de token
                  },
                  child: Text(
                    "Enviar token",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Adicione a lógica de confirmação
                  },
                  child: Text(
                    "Confirmar",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.purple),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.purple, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForgotPasswordScreen1(),
  ));
}
