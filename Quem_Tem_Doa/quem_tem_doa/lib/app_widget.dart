import 'package:flutter/material.dart';
import 'package:quem_tem_doa/app_controller.dart';
import 'package:quem_tem_doa/login_page.dart';

import 'desafio.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/desafio': (context) => DesafioPage(),
          },
        );
      },
    );
  }
}
