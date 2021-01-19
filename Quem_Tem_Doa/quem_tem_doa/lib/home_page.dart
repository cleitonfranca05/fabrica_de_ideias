import 'package:flutter/material.dart';
import 'package:quem_tem_doa/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      'https://scontent.fcpq2-1.fna.fbcdn.net/v/t1.0-9/57599687_2200581310028822_8348330565497257984_n.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeHZcpIVHho2DYN8GLMw3NeYP_KRWwLe3Ng_8pFbAt7c2Jo0L_ECbU91kzrs2AfUQX04kSKSS-UtG8VTlOx_uIs4&_nc_ohc=ZABB88ShaLoAX__E9a0&_nc_ht=scontent.fcpq2-1.fna&oh=c07c60e10028a86895f0ef887f5f8698&oe=601E40F0'),
                ),
                accountName: Text('Cleiton França'),
                accountEmail: Text('cleitonfranca05@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Inicio do App'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.next_plan),
              title: Text('Desafio'),
              subtitle: Text('Desafio Proposto Flutterando'),
              onTap: () {
                Navigator.of(context).pushNamed('/desafio');
              },
            ),
            ListTile(
                title: Text('Alterar Layout'),
                subtitle: Text('Alterar Thema'),
                leading: CustomSwitch()),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Sair do App'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Fábrica de Idéias'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.black)
              ],
            ),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
            Container(height: 20),
            CardsLegislacao(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.chanceTheme();
      },
    );
  }
}

class CardsLegislacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(50),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: 300,
          height: 100,
          color: Colors.blue[50],
          child: Column(
            children: [
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore'),
            ],
          ),
        ),
      ),
    );
  }
}
