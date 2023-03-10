import 'package:wikinerd/core/entities/base/character.dart';

class StarWarsCharacter extends Character {
  String? imageUrl;

  StarWarsCharacter({
    required this.imageUrl,
    required super.id,
    required super.name,
  });
}
