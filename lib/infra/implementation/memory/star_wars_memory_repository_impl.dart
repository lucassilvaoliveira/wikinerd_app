import 'package:multiple_result/multiple_result.dart';
import 'package:wikinerd/core/entities/star_wars_character.dart';
import 'package:wikinerd/core/exceptions/character/character_exception.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/infra/interface/i_repository.dart';

class StarWarsMemoryRepositoryImpl implements IRepository<StarWarsCharacter, CharacterException> {
  @override
  Future<Result<List<StarWarsCharacter>, CharacterException>> get({required String? id}) async {
    try {
      if (id != null) {
        return Success([
          StarWarsCharacter(imageUrl: "imageUrl", id: id, name: "yoda")
        ]);
      }
      List<StarWarsCharacter> characters = [
        StarWarsCharacter(imageUrl: "imageUrl", id: uuid.v4(), name: "yoda"),
        StarWarsCharacter(imageUrl: "imageUrl", id: uuid.v4(), name: "luky skywalker"),
      ];
      return Success(characters);
    } on CharacterException catch (e) {
      return Error(CharacterException(cause: e.toString()));
    }
  }
}
