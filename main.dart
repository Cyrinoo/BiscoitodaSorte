import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listaFrases = [
    "A vida trará coisas boas se tiver paciência.",
    "Demonstre amor e alegria em todas as oportunidades e verá que a paz nasce dentro de si.",
    "Não compense na ira o que lhe falta na razão.",
    "Defeitos e virtudes são apenas dois lados da mesma moeda."
  ];

  var fraseDaSorte = "Clique no Botão para ter a Sorte!";
  var imgBiscoitoInteiro = "images/biscoitoInteiro.png";

  void quebrarBiscoito() {
    var numero = Random().nextInt(listaFrases.length);
    print("Clicou");

    setState(() {
      fraseDaSorte = listaFrases[numero];
      imgBiscoitoInteiro = "images/biscoitoQuebrado.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biscoito da Sorte!"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(80),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imgBiscoitoInteiro),
                radius: 80,
                backgroundColor: Colors.white,
              ),
              Text(
                fraseDaSorte,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              ElevatedButton(
                onPressed: quebrarBiscoito, // Conectar à função correta
                child: Text("Quebrar o Biscoito"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.teal, onPrimary: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
