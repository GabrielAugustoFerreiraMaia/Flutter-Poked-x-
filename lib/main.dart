import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/repositories/pokemon_repository.dart';

import 'features/home/container/home_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeContainer(
        repository: PokemonRepository(
          dio: Dio(),
        ),
      ),
    );
  }
}