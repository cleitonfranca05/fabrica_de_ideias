import 'package:flutter/material.dart';

class DesafioPage extends StatefulWidget {
  @override
  _DesafioPageState createState() => _DesafioPageState();
}

class _DesafioPageState extends State<DesafioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Desafio Flutterando'),
      ),
      body: Column(
        children: [
          Container(height: 20),
        ],
      ),
    );
  }
}
