import 'package:multiple_result/multiple_result.dart';
import 'package:wikinerd/core/usecases/contract/use_case_contract.dart';

abstract class GetUseCaseContract<T, E> extends UseCaseContract<T, E> {
  GetUseCaseContract({required super.repository});

  @override
  Future<Result<List<T>, E>> call({required String? id}) async {
    return repository.get(id: id);
  }
}
