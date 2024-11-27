import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DialerScreen(),
    );
  }
}

class DialerScreen extends StatelessWidget {
  final List<List<String>> dialPad = [
    ['1', '', ''],
    ['2', 'ABC', ''],
    ['3', 'DEF', ''],
    ['4', 'GHI', ''],
    ['5', 'JKL', ''],
    ['6', 'MNO', ''],
    ['7', 'PQRS', ''],
    ['8', 'TUV', ''],
    ['9', 'WXYZ', ''],
    ['*', '', ''],
    ['0', '', ''],
    ['#', '', ''],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(color: Colors.grey[200]), // Área em branco superior
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: dialPad.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            padding: EdgeInsets.all(16),
            itemBuilder: (context, index) {
              final item = dialPad[index];
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                ),
                onPressed: () {
                  // Ação ao pressionar os botões
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item[0],
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    if (item[1].isNotEmpty)
                      Text(
                        item[1],
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.call, color: Colors.green),
                iconSize: 48,
                onPressed: () {
                  // Ação ao pressionar o botão de chamada
                },
              ),
              IconButton(
                icon: Icon(Icons.backspace, color: Colors.black),
                iconSize: 36,
                onPressed: () {
                  // Ação ao pressionar o botão de apagar
                },
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
