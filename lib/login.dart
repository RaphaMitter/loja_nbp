import 'package:flutter/material.dart';
import 'principal_Um.dart';
import 'esqueciMinhaSenha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Image.asset(
                  'assets/NBPR.png', // substitua pelo caminho correto do seu arquivo de logo
                  height: 150,
                ),
              ),
              // Campos de texto para login e senha
              TextField(
                decoration: InputDecoration(
                  labelText: 'LOGIN',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'SENHA',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Links para "Entrar", "Cadastrar" e "Esqueci minha senha"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrincipalUm()),

                  );// Ação para cadastrar// Ação para entrar
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(color: Colors.purple, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),

                  );

                },
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(color: Colors.purple, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
