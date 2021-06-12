import 'package:flutter/material.dart';
import 'pokemon.dart';
import 'PokemonCard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Pokemon> pokelist = [
    Pokemon(
        name: "Bulbasaur",
        imageurl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"),
    Pokemon(
        name: "Charmander",
        imageurl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png"),
    Pokemon(
        name: 'Squirtle',
        imageurl:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        titleSpacing: 1.0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              pokelist.map((pokemon) => PokemonCard(pokemon: pokemon)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.help),
        tooltip: 'show help',
      ),
    );
  }
}
