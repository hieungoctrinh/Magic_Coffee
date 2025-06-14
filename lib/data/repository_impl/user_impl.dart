import 'package:magic_coffee/data/request/create_user_request.dart';
import 'package:magic_coffee/data/request/find_user_request.dart';
import 'package:magic_coffee/data/response/response_wrapper.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/data/services/user_service.dart';
import 'package:magic_coffee/domain/entities/login.dart';
import 'package:magic_coffee/domain/entities/user.dart';
import 'package:magic_coffee/domain/repository/user_repository.dart';

class UserRepoImpl implements UserRepository {
  final UserService _service;

  UserRepoImpl(this._service);

  @override
  Future<Result<List<UserModel>>> getAllUser() {
    return runCatchingAsync<ResponseWrapper<List<UserModel>>, List<UserModel>>(
      () => _service.getAllUsers(),
      (res) => res.data,
    );
  }

  @override
  Future<Result<UserModel>> getUser(FindUserRequest req) {
    return runCatchingAsync<ResponseWrapper<UserModel>, UserModel>(
      () => _service.getUser(req),
      (res) => res.data,
    );
  }

  @override
  Future<Result<LoginModel>> register(RegistrationRequest request) {
    return runCatchingAsync<ResponseWrapper<LoginModel>, LoginModel>(
      () => _service.register(request),
      (res) => res.data,
    );
  }

  @override
  Future<Result<UserModel>> getInfo() {
    return runCatchingAsync<ResponseWrapper<UserModel>, UserModel>(
      () => _service.getInfo(),
      (res) => res.data,
    );
  }
}
