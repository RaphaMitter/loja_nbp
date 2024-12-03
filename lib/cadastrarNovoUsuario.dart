import 'package:flutter/material.dart';
import 'login.dart';
import 'boasVindas.dart';
import 'principal_Um.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CadastroNovoUsuario(),
    );
  }
}

class CadastroNovoUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Logo
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/logo.png', // Substitua pelo caminho correto do logo
                      height: 50,
                    ),
                  ),
                  SizedBox(height: 10),

                  // Título
                  Center(
                    child: Text(
                      'Cadastro de novo usuario',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Campos de texto
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'NOME DO USUÁRIO',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'E-MAIL',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'TELEFONE',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'CPF',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'SENHA',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'CONFIRMAR A SENHA',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),

                  // Botões
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login ()),

                  );// Ação do botão "Voltar"
                        },
                        child: Text(
                          'Voltar',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      TextButton(
                        onPressed: () {

                          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrincipalUm()),

                  );
                          // Ação do botão "Cadastrar"
                        },
                        child: Text(
                          'Cadastrar',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

