import 'package:multiple_result/src/result.dart';
import 'package:wikinerd/infra/interface/i_repository.dart';

class RickAndMortyApiRepositoryImpl<RickAndMortyCharacter, ApiException> implements IRepository<RickAndMortyCharacter, ApiException> {
  @override
  Future<Result<List<RickAndMortyCharacter>, ApiException>> get({required String? id}) {
    // TODO: implement get
    throw UnimplementedError();
  }
 

  

  
}