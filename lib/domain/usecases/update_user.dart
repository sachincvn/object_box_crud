import '../entities/user.dart';
import '../repositories/user_repository.dart';
import '../../core/utils/typedef.dart';

class UpdateUser {
  const UpdateUser(this._repository);
  
  final UserRepository _repository;
  
  ResultFuture<User> call(User user) async {
    return _repository.updateUser(user);
  }
}
