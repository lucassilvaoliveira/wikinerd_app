import 'package:multiple_result/multiple_result.dart';
import 'package:wikinerd/core/usecases/contract/use_case_contract.dart';

class GetUseCaseContract<T, E> extends UseCaseContract<T, E> {
  GetUseCaseContract({required super.repository});

  @override
  Future<Result<T, E>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }

}