import 'package:flutter/material.dart';
import 'package:flutter_application_1/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  PokemonCard({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(pokemon.imageurl),
            radius: 30.0,
          ),
          SizedBox(
            height: 2.0,
          ),
          Text(
            pokemon.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              wordSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
