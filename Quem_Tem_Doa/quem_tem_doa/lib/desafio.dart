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
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 250,
                    child: Image.asset('assets/images/tinder.png'),
                  ),
                  Text("Location Changer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.red[600])),
                  Container(height: 10),
                  Text("Plugin app for Tinder",
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.red[600])),
                  Container(height: 50),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.red[300],
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 50, right: 50, bottom: 20),
                      child: Text('Login with Facebook',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
