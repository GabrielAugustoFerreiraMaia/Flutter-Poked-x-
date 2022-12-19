import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/models/pokemon.dart';
import 'package:flutter_application_1/features/pokedex/screens/details/container/detail_container.dart';
import 'package:flutter_application_1/features/pokedex/screens/home/pages/widgets/type_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget(
      {Key? key, required this.pokemon, required this.onTap})
      : super(key: key);
  final Pokemon pokemon;

  final Function(String, DetailArguments) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap('/details', DetailArguments(pokemon: pokemon)),
      child: Container(
        decoration: BoxDecoration(
            color: pokemon.baseColor!.withOpacity(0.8),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(
                  child: Text(
                    pokemon.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
                Text(
                  '#${pokemon.num}',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: pokemon.type
                          .map((e) => TypeWidget(
                                name: e,
                              ))
                          .toList(),
                    ),
                    Flexible(child: Image.network(pokemon.image)),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
