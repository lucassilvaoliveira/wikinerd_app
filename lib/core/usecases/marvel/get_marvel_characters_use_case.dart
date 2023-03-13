import 'package:wikinerd/core/entities/marvel_character.dart';
import 'package:wikinerd/core/exceptions/character/character_exception.dart';
import 'package:wikinerd/core/usecases/contract/get_use_case_contract.dart';

class GetMarvelCharactersUseCase extends GetUseCaseContract<MarvelCharacter, CharacterException> {
  GetMarvelCharactersUseCase({required super.repository});
}
