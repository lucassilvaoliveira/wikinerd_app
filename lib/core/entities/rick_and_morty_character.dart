import 'package:wikinerd/core/entities/base/character.dart';

class RickAndMortyCharacter extends Character {
  String? planet;
  String? imageUrl;

  RickAndMortyCharacter({
    required this.planet,
    required super.id,
    required super.name,
  });
}
