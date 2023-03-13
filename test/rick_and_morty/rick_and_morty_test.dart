import 'package:flutter_test/flutter_test.dart';
import 'package:wikinerd/core/entities/rick_and_morty_character.dart';
import 'package:wikinerd/core/usecases/rick_and_morty/get_rick_and_morty_characters_use_case.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/infra/implementation/memory/rick_and_morty_memory_repository_impl.dart';

void main() {
  test('should be return an character of rick and morty', () async {
    GetRickAndMortyCharactersUseCase getRickAndMortyCharactersUseCase = GetRickAndMortyCharactersUseCase(
      repository: RickAndMortyMemoryRepositoryImpl(),
    );

    var sut;

    final call = await getRickAndMortyCharactersUseCase.call(id: null);

    call.when((success) => sut = success, (error) => sut = error);

    expect(sut is List<RickAndMortyCharacter>, true);
  });

  test("should be return rick", () async {
    GetRickAndMortyCharactersUseCase getRickAndMortyCharactersUseCase = GetRickAndMortyCharactersUseCase(
      repository: RickAndMortyMemoryRepositoryImpl(),
    );

    final rickId = uuid.v4();

    var sut;

    final call = await getRickAndMortyCharactersUseCase.call(id: rickId);

    call.when((success) => sut = success, (error) => sut = error);

    expect(sut.first.name, "rick");
  });
}
