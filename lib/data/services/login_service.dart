import 'package:dio/dio.dart';
import 'package:magic_coffee/data/request/login_request.dart';
import 'package:magic_coffee/data/response/response_wrapper.dart';
import 'package:magic_coffee/domain/entities/login.dart';
import 'package:magic_coffee/utils/constants/api_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'login_service.g.dart';

@RestApi()
abstract class LoginService {
  @factoryMethod
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;

  @POST(ApiConstants.AUTH + ApiConstants.LOGIN)
  Future<ResponseWrapper<LoginModel>> login(@Body() LoginRequest request);
}
