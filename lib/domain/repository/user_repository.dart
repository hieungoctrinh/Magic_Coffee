import 'package:magic_coffee/data/request/create_user_request.dart';
import 'package:magic_coffee/data/request/find_user_request.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/domain/entities/login.dart';
import 'package:magic_coffee/domain/entities/user.dart';

abstract class UserRepository {
  Future<Result<List<UserModel>>> getAllUser();
  Future<Result<UserModel>> getUser(FindUserRequest req);
  Future<Result<LoginModel>> register(RegistrationRequest request);
  Future<Result<UserModel>> getInfo();
}
