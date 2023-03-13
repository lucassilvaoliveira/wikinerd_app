import 'package:flutter_test/flutter_test.dart';
import 'package:wikinerd/core/entities/star_wars_character.dart';
import 'package:wikinerd/core/usecases/star_wars/get_star_wars_characters_use_case.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/infra/implementation/memory/star_wars_memory_repository_impl.dart';

void main() {
  test('should be return an character of star wars', () async {
    GetStarWarsCharactersUseCase getStarWarsCharactersUseCase = GetStarWarsCharactersUseCase(
      repository: StarWarsMemoryRepositoryImpl(),
    );

    var sut;

    final call = await getStarWarsCharactersUseCase.call(id: null);

    call.when((success) => sut = success, (error) => sut = error);

    expect(sut is List<StarWarsCharacter>, true);
  });

  test('should be return yoda', () async {
    GetStarWarsCharactersUseCase getStarWarsCharactersUseCase = GetStarWarsCharactersUseCase(
      repository: StarWarsMemoryRepositoryImpl(),
    );

    final yodaId = uuid.v4();

    var sut;

    final call = await getStarWarsCharactersUseCase.call(id: yodaId);

    call.when((success) => sut = success, (error) => sut = error);

    expect(sut.first.name, "yoda");
  });
}
