import 'package:magic_coffee/data/request/login_request.dart';
import 'package:magic_coffee/core/result/result.dart';
import 'package:magic_coffee/domain/entities/login.dart';

abstract class LoginRepository {
  Future<Result<LoginModel>> login(LoginRequest request);
}
