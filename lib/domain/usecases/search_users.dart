import '../entities/user.dart';
import '../repositories/user_repository.dart';
import '../../core/utils/typedef.dart';

class SearchUsers {
  const SearchUsers(this._repository);
  
  final UserRepository _repository;
  
  ResultFuture<List<User>> call(String query) async {
    return _repository.searchUsers(query);
  }
}
