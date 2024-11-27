
import 'package:flutter/material.dart';
 
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
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
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