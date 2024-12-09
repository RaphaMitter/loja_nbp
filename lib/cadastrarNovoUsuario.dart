import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'login.dart';
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

class CadastroNovoUsuario extends StatefulWidget {
  @override
  _CadastroNovoUsuarioState createState() => _CadastroNovoUsuarioState();
}

class _CadastroNovoUsuarioState extends State<CadastroNovoUsuario> {
  // Controladores para os campos de texto
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController = TextEditingController();

  // Função para enviar dados à API
  Future<void> cadastrarUsuario() async {
    final String apiUrl = "http://localhost/api_aplicativoNBPR/status/save.php";

    // Dados do formulário
    final Map<String, String> data = {
      "nome_usuario": nomeController.text,
      "email": emailController.text,
      "telefone": telefoneController.text,
      "cpf": cpfController.text,
      "senha": senhaController.text,
      "confirmar_senha": confirmarSenhaController.text,
    };

    try {
      // Requisição POST para a API
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );

      // Verificar a resposta
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        if (responseData["success"] == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Cadastro realizado com sucesso!")),
          );
          // Navegar para a próxima tela após sucesso
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PrincipalUm()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Erro: ${responseData["message"]}")),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Erro no servidor: ${response.statusCode}")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Erro de conexão: $e")),
      );
    }
  }

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
                      'Cadastro de novo usuário',
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
                    controller: nomeController,
                    decoration: InputDecoration(
                      labelText: 'NOME DO USUÁRIO',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'E-MAIL',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: telefoneController,
                    decoration: InputDecoration(
                      labelText: 'TELEFONE',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: cpfController,
                    decoration: InputDecoration(
                      labelText: 'CPF',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: senhaController,
                    decoration: InputDecoration(
                      labelText: 'SENHA',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: confirmarSenhaController,
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
                            MaterialPageRoute(builder: (context) => Login()),
                          ); // Voltar para tela de login
                        },
                        child: Text(
                          'Voltar',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          cadastrarUsuario(); // Chama a função de cadastro
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          'Cadastrar',
                          style: TextStyle(color: Colors.white),
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
