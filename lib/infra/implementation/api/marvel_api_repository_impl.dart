import 'package:multiple_result/multiple_result.dart';
import 'package:wikinerd/infra/interface/i_repository.dart';

class MarvelApiRepositoryImpl<MarvelCharacter, ApiException> implements IRepository<MarvelCharacter, ApiException> {
  @override
  Future<Result<List<MarvelCharacter>, ApiException>> get({required String? id}) {
    // TODO: implement get
    throw UnimplementedError();
  }
  

  
  

}