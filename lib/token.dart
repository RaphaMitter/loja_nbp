import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForgotPasswordScreen(),
    );
  }
}
 
class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo no topo
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/logo.png', // Substitua pelo caminho da sua logo
                      height: 50,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Esqueci minha senha',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                // Opção de recebimento via SMS ou E-mail
                Card(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.info_outline, color: Colors.black54),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Você deseja receber via e-mail ou SMS?',
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                              ),
                              child: Text('SMS'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                              ),
                              child: Text('E-mail'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              child: Text('Cancelar'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Campos de texto
                CustomTextField(label: 'E-MAIL'),
                SizedBox(height: 10),
                CustomTextField(label: 'CELULAR'),
                SizedBox(height: 10),
                CustomTextField(label: 'SENHA'),
                SizedBox(height: 10),
                CustomTextField(label: 'CONFIRMAR NOVA SENHA'),
                SizedBox(height: 10),
                CustomTextField(label: 'CÓDIGO DE IDENTIFICAÇÃO'),
                SizedBox(height: 20),
                // Botões de ação
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Confirmar',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Voltar',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Enviar token',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 
class CustomTextField extends StatelessWidget {
  final String label;
 
  const CustomTextField({required this.label});
 
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Color(0xFF5A005A)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF5A005A)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF5A005A)),
        ),
      ),
    );
  }
}