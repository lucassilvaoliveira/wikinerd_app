
import 'package:multiple_result/multiple_result.dart';
import 'package:wikinerd/core/entities/marvel_character.dart';
import 'package:wikinerd/core/exceptions/character/character_exception.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/infra/interface/i_repository.dart';

class MarvelMemoryRepositoryImpl implements IRepository<MarvelCharacter, CharacterException> {
  @override
  Future<Result<List<MarvelCharacter>, CharacterException>> get({required String? id}) async {
    try {
      if (id != null) {
        return Success([
          MarvelCharacter(imageUrl: "imageUrl", id: id, name: "tony stark")
        ]);
      }
      final List<MarvelCharacter> characters = [
        MarvelCharacter(imageUrl: "imageUrl", id: uuid.v4(), name: "tony stark"),
        MarvelCharacter(imageUrl: "imageUrl", id: uuid.v4(), name: "hulk")
      ];
      return Success(characters);
    } catch (e) {
      return Error(CharacterException(cause: e.toString()));
    }
  }
}
