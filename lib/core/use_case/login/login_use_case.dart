import 'package:magic_coffee/core/network/di/module.dart';
import 'package:magic_coffee/data/request/login_request.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/domain/entities/login.dart';
import 'package:magic_coffee/domain/repository/login_repository.dart';
import 'package:magic_coffee/core/use_case/base/base_use_case.dart';

class LoginUseCase implements BaseUseCase<LoginRequest, Result<LoginModel>> {
  final _repo = getIt.get<LoginRepository>();
  @override
  Future<Result<LoginModel>> call(param) async {
    return await _repo.login(param);
  }
}
