import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LigueGas(),

  ));
}


class LigueGas extends StatelessWidget {
  const LigueGas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Precisou de Gas?"),
        backgroundColor: Colors.redAccent,


      ),

      body: Column(
        children: <Widget>[
          Padding( padding: EdgeInsets.all(30),
            child: Image.asset("imagens/gasatendente.png", width: 300, height: 200,),
          ),
          Text("Peça aqui o seu gas!!",),

          Padding( padding: EdgeInsets.all(20),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Image.asset("imagens/availability.png", width: 100, height: 100,),
                Image.asset("imagens/offer.png", width: 100, height: 100,),
                Image.asset("imagens/phone.png", width: 100, height: 100,),
              ],
            ),
          ),

          ElevatedButton(
            child: Text("Atendimento"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Atendimento()),
              );
            }, //onPressed
          )
        ],
      ),
    );
  }
}


class Atendimento extends StatelessWidget {
  const Atendimento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Precisou de Gas?"),
        backgroundColor: Colors.redAccent,
      ),

      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Abrir Mapa"),
          ),

          ListTile(
            leading: Icon(Icons.album),
            title: Text("Imagens dos nosso Pontos de acesso"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Contato"),
          ),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Acessibilidade"),

          ),
          ListTile(
            leading: Icon(Icons.location_pin),
            title: Text("Localização"),
          ),

          Padding( padding: EdgeInsets.all(30),
            child: Image.asset("imagens/gas7.png", width: 250, height: 400,),
          ),

          ElevatedButton(
            child: Text("Voltar"),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => LigueGas()),
              );
            },
          ),
          ElevatedButton(
            child: Text("Suporte"),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Suporte()),
              );
            },
          )
        ],
      ),
    );
  }
}

class Suporte extends StatefulWidget {
  const Suporte({Key? key}) : super(key: key);

  @override
  _SuporteState createState() => _SuporteState();
}

class _SuporteState extends State<Suporte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Em que podemos ajudar"),
          backgroundColor: Colors.redAccent,
    ),

      body: Center(
      child :Column(
          children: <Widget>[
             Image.asset("imagens/phone.png", width: 300, height: 200,),

          Text("Ligue para 31 90888-8745!",),

            ElevatedButton(
              child: Text("Atendente"),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LigueGas()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Atendimento"),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Atendimento()),
                );
              },
            )
        ]
    ),

    ),
    );
  }
}


