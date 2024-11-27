import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MyApp(username: 'NomeDoUsuario'));
}

class MyApp extends StatelessWidget {
  final String username;

  const MyApp({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loja NBPR',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(), // Tela de Login
      },
    );
  }
}