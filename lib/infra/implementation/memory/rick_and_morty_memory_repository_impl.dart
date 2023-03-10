import 'package:multiple_result/multiple_result.dart';
import 'package:wikinerd/core/entities/rick_and_morty_character.dart';
import 'package:wikinerd/core/exceptions/character/character_exception.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/infra/interface/i_repository.dart';

class RickAndMortyMemoryRepositoryImpl implements IRepository<RickAndMortyCharacter, CharacterException> {
  @override
  Future<Result<List<RickAndMortyCharacter>, CharacterException>> get({required String? id}) async {
    try {
      if (id != null) {
        return Success([
          RickAndMortyCharacter(planet: "C137", id: id, name: "rick")
        ]);
      }
      final List<RickAndMortyCharacter> characters = [
        RickAndMortyCharacter(planet: "C137", id: uuid.v4(), name: "rick"),
        RickAndMortyCharacter(planet: "C137", id: uuid.v4(), name: "morty"),
      ];
      return Success(characters);
    } catch (e) {
      return Error(CharacterException(cause: e.toString()));
    }
  }
}
