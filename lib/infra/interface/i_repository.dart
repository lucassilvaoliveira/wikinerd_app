import 'package:multiple_result/multiple_result.dart';

abstract class IRepository<T, E> {
  Future<Result<List<T>, E>> get({required String? id});
}