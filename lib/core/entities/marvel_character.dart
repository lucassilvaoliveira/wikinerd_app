import 'package:wikinerd/core/entities/base/character.dart';

class MarvelCharacter extends Character {
  String? imageUrl;
  
  MarvelCharacter({
    required this.imageUrl,
    required super.id,
    required super.name,
  });
}
