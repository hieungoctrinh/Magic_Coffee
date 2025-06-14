import 'package:magic_coffee/core/network/di/module.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/domain/entities/user.dart';
import 'package:magic_coffee/domain/repository/user_repository.dart';
import 'package:magic_coffee/core/use_case/base/base_use_case.dart';

class GetAllUserUseCase implements BaseUseCase<void, Result<List<UserModel>>> {
  final _repo = getIt.get<UserRepository>();
  @override
  Future<Result<List<UserModel>>> call(param) async {
    return await _repo.getAllUser();
  }
}
