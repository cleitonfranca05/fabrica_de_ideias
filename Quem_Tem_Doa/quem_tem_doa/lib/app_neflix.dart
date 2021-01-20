import 'package:flutter/material.dart';

class NetflixPage extends StatefulWidget {
  @override
  _NetflixPageState createState() => _NetflixPageState();
}

class _NetflixPageState extends State<NetflixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
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
                  Navigator.of(context).pushNamed('/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Desafio'),
                subtitle: Text('Desafio Proposto Flutterando'),
                onTap: () {
                  Navigator.of(context).pushNamed('/desafio');
                },
              ),
              ListTile(
                leading: Icon(Icons.tv),
                title: Text('Netflix'),
                subtitle: Text('App do Netflix'),
                onTap: () {
                  Navigator.of(context).pushNamed('/netflix');
                },
              ),
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
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: Text('NETFLIX',
              style: TextStyle(
                color: Colors.red[500],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              )),
        ),
        body: Container(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 150,
                      height: 100,
                      child: Image.asset('assets/images/netflix.png'),
                    ),
                  ),
                  GridCardsAtor(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Minha PlayList",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        )),
                  ),
                  GridCardsFilmes(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Porque você assistiu .....",
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        )),
                  ),
                  GridCardsFilmes(),
                  GridCardsFilmes(),
                  GridCardsFilmes(),
                ],
              )
            ],
          ),
        ));
  }
}

class CardAtor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
      width: 120.0,
      child: Image.asset(
        'assets/images/logoNetflix.png',
      ),
    );
  }
}

class GridCardsAtor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardAtor(),
          Container(
            width: 10.0,
          ),
          CardAtor(),
          Container(
            width: 10.0,
          ),
          CardAtor(),
          Container(
            width: 10.0,
          ),
          CardAtor(),
          Container(
            width: 10.0,
          ),
          CardAtor(),
          Container(
            width: 10.0,
          ),
          CardAtor(),
          Container(
            width: 10.0,
          ),
          CardAtor(),
          Container(
            width: 10.0,
          ),
          CardAtor(),
        ],
      ),
    );
  }
}

class CardsFilmes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () {
        print('direcionar para algum link');
      },
      child: Container(
          width: 120,
          height: 100,
          color: Colors.black87,
          child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Vingadores',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )),
                  Container(
                    height: 20.0,
                  ),
                  Image.asset('assets/images/vingadores.png')
                ],
              ))),
    ));
  }
}

class GridCardsFilmes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
          CardsFilmes(),
          Container(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
