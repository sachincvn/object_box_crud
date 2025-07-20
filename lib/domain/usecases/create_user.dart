import '../entities/user.dart';
import '../repositories/user_repository.dart';
import '../../core/utils/typedef.dart';

class CreateUser {
  const CreateUser(this._repository);
  
  final UserRepository _repository;
  
  ResultFuture<User> call(User user) async {
    return _repository.createUser(user);
  }
}
