import '../entities/user.dart';
import '../repositories/user_repository.dart';
import '../../core/utils/typedef.dart';

class GetAllUsers {
  const GetAllUsers(this._repository);
  
  final UserRepository _repository;
  
  ResultFuture<List<User>> call() async {
    return _repository.getAllUsers();
  }
}
