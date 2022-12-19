import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/models/pokemon.dart';
import 'package:flutter_application_1/features/pokedex/screens/details/container/detail_container.dart';
import 'package:flutter_application_1/features/pokedex/screens/home/pages/widgets/pokemon_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.list, required this.onItemTap})
      : super(key: key);
  final List<Pokemon> list;
  final Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'Pokédex',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          children: list
              .map((e) => PokemonItemWidget(
                    pokemon: e,
                    onTap: onItemTap,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
