import 'package:wikinerd/core/entities/star_wars_character.dart';
import 'package:wikinerd/core/exceptions/character/character_exception.dart';
import 'package:wikinerd/core/usecases/contract/get_use_case_contract.dart';

class GetStarWarsCharactersUseCase extends GetUseCaseContract<StarWarsCharacter, CharacterException> {
  GetStarWarsCharactersUseCase({required super.repository});
}
