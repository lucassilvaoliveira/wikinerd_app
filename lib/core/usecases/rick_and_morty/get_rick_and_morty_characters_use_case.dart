import 'package:wikinerd/core/entities/rick_and_morty_character.dart';
import 'package:wikinerd/core/exceptions/character/character_exception.dart';
import 'package:wikinerd/core/usecases/contract/get_use_case_contract.dart';

class GetRickAndMortyCharactersUseCase extends GetUseCaseContract<RickAndMortyCharacter, CharacterException> {
  GetRickAndMortyCharactersUseCase({required super.repository});
}
