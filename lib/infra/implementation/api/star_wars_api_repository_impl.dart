import 'package:multiple_result/src/result.dart';
import 'package:wikinerd/infra/interface/i_repository.dart';

class StarWarsApiRepositoryImpl<StarWarsCharacter, ApiException> implements IRepository<StarWarsCharacter, ApiException> {
  @override
  Future<Result<List<StarWarsCharacter>, ApiException>> get({required String? id}) {
    // TODO: implement get
    throw UnimplementedError();
  }
}