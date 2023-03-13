import 'package:wikinerd/infra/interface/i_repository.dart';

abstract class UseCaseContract<T, E> {
  final IRepository<T, E> repository;

  UseCaseContract({required this.repository});

  Future call({required String? id});
}
