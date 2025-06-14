import 'package:magic_coffee/core/network/di/module.dart';
import 'package:magic_coffee/data/request/create_user_request.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/domain/entities/login.dart';
import 'package:magic_coffee/domain/repository/user_repository.dart';
import 'package:magic_coffee/core/use_case/base/base_use_case.dart';

class RegistrationUseCase
    implements BaseUseCase<RegistrationRequest, Result<LoginModel>> {
  final _repo = getIt.get<UserRepository>();
  @override
  Future<Result<LoginModel>> call(param) async {
    return await _repo.register(param);
  }
}
