import 'package:magic_coffee/data/request/login_request.dart';
import 'package:magic_coffee/data/response/response_wrapper.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/data/services/login_service.dart';
import 'package:magic_coffee/domain/entities/login.dart';
import 'package:magic_coffee/domain/repository/login_repository.dart';

class LoginRepoImpl implements LoginRepository {
  final LoginService _service;

  LoginRepoImpl(this._service);

  @override
  Future<Result<LoginModel>> login(LoginRequest request) {
    return runCatchingAsync<ResponseWrapper<LoginModel>, LoginModel>(
      () => _service.login(request),
      (res) => res.data,
    );
  }
}
