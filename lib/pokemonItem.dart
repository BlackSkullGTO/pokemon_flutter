import 'package:flutter/material.dart';
import 'package:network_listview_builder/pokemonModel.dart';
import 'package:network_listview_builder/pokemonPage.dart';

class PokemonItem extends StatelessWidget {
  PokemonItem({Key key, @required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PokemonPage(
                    pokemon: this.pokemon,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Row(children: <Widget>[
          Flexible(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  getPokemonName(),
                ]),
          ),
          Column(children: <Widget>[
            Center(
              child: Image.network(pokemon.defaultImage),
            )
          ]),
        ]),
      ),
    );
  }

  Widget getPokemonName() {
    return Row(
      children: <Widget>[
        Text(pokemon.name.toUpperCase(), style: TextStyle(fontSize: 24)),
      ],
    );
  }
}
