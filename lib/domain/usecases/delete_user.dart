import '../repositories/user_repository.dart';
import '../../core/utils/typedef.dart';

class DeleteUser {
  const DeleteUser(this._repository);
  
  final UserRepository _repository;
  
  ResultVoid call(String id) async {
    return _repository.deleteUser(id);
  }
}
