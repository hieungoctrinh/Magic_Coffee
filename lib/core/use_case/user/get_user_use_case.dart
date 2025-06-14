import 'package:magic_coffee/core/network/di/module.dart';
import 'package:magic_coffee/data/request/find_user_request.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/domain/entities/user.dart';
import 'package:magic_coffee/domain/repository/user_repository.dart';
import 'package:magic_coffee/core/use_case/base/base_use_case.dart';

class GetUserUseCase
    implements BaseUseCase<FindUserRequest, Result<UserModel>> {
  final _repo = getIt.get<UserRepository>();
  @override
  Future<Result<UserModel>> call(param) async {
    return await _repo.getUser(param);
  }
}
