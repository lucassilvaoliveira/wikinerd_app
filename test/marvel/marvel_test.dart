import 'package:flutter_test/flutter_test.dart';
import 'package:wikinerd/core/entities/marvel_character.dart';
import 'package:wikinerd/core/usecases/marvel/get_marvel_characters_use_case.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/infra/implementation/memory/marvel_memory_repository_impl.dart';

void main() {
  test('should be return an character of marvel', () async {
    GetMarvelCharactersUseCase getMarvelCharactersUseCase = GetMarvelCharactersUseCase(
      repository: MarvelMemoryRepositoryImpl(),
    );

    var sut;

    final call = await getMarvelCharactersUseCase.call(id: null);

    call.when((success) => sut = success, (error) => sut = error);

    expect(sut is List<MarvelCharacter>, true);
  });

  test("shoud be return tony stark", () async {
    GetMarvelCharactersUseCase getMarvelCharactersUseCase = GetMarvelCharactersUseCase(
      repository: MarvelMemoryRepositoryImpl(),
    );

    final tonyStarkId = uuid.v4();

    var sut;

    final call = await getMarvelCharactersUseCase.call(id: tonyStarkId);

    call.when((success) => sut = success, (error) => sut = error);

    expect(sut.first.name, "tony stark");
  });
}
