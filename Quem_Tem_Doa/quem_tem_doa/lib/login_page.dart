import 'package:flutter/material.dart';
import 'package:quem_tem_doa/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/login.png'),
              ),
              Container(height: 10),
              Container(
                  child: Text('Fábrica de Idéias',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.blue[500]))),
              Container(height: 60),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: [
                    Container(height: 10),
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Email'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue[500],
                      onPressed: () {
                        if (email == 'cleiton' && password == '123456') {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          print('Login Invalido');
                        }
                      },
                      child: Text('Entrar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(color: Colors.grey[300].withOpacity(0.3)),
        _body(),
      ],
    ));
  }
}
