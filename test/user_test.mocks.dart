// Mocks generated by Mockito 5.4.6 from annotations
// in flutter_base_bloc/test/user_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_base_bloc/data/request/create_user_request.dart' as _i8;
import 'package:flutter_base_bloc/data/request/find_user_request.dart' as _i6;
import 'package:flutter_base_bloc/data/response/response_wrapper.dart' as _i2;
import 'package:flutter_base_bloc/data/services/user_service.dart' as _i3;
import 'package:flutter_base_bloc/domain/entities/login.dart' as _i7;
import 'package:flutter_base_bloc/domain/entities/user.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponseWrapper_0<T> extends _i1.SmartFake
    implements _i2.ResponseWrapper<T> {
  _FakeResponseWrapper_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserService extends _i1.Mock implements _i3.UserService {
  @override
  _i4.Future<_i2.ResponseWrapper<List<_i5.UserModel>>> getAllUsers() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllUsers,
          [],
        ),
        returnValue: _i4.Future<_i2.ResponseWrapper<List<_i5.UserModel>>>.value(
            _FakeResponseWrapper_0<List<_i5.UserModel>>(
          this,
          Invocation.method(
            #getAllUsers,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.ResponseWrapper<List<_i5.UserModel>>>.value(
                _FakeResponseWrapper_0<List<_i5.UserModel>>(
          this,
          Invocation.method(
            #getAllUsers,
            [],
          ),
        )),
      ) as _i4.Future<_i2.ResponseWrapper<List<_i5.UserModel>>>);

  @override
  _i4.Future<_i2.ResponseWrapper<_i5.UserModel>> getUser(
          _i6.FindUserRequest? keyword) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUser,
          [keyword],
        ),
        returnValue: _i4.Future<_i2.ResponseWrapper<_i5.UserModel>>.value(
            _FakeResponseWrapper_0<_i5.UserModel>(
          this,
          Invocation.method(
            #getUser,
            [keyword],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.ResponseWrapper<_i5.UserModel>>.value(
                _FakeResponseWrapper_0<_i5.UserModel>(
          this,
          Invocation.method(
            #getUser,
            [keyword],
          ),
        )),
      ) as _i4.Future<_i2.ResponseWrapper<_i5.UserModel>>);

  @override
  _i4.Future<_i2.ResponseWrapper<_i7.LoginModel>> register(
          _i8.RegistrationRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #register,
          [request],
        ),
        returnValue: _i4.Future<_i2.ResponseWrapper<_i7.LoginModel>>.value(
            _FakeResponseWrapper_0<_i7.LoginModel>(
          this,
          Invocation.method(
            #register,
            [request],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.ResponseWrapper<_i7.LoginModel>>.value(
                _FakeResponseWrapper_0<_i7.LoginModel>(
          this,
          Invocation.method(
            #register,
            [request],
          ),
        )),
      ) as _i4.Future<_i2.ResponseWrapper<_i7.LoginModel>>);

  @override
  _i4.Future<_i2.ResponseWrapper<_i5.UserModel>> getInfo() =>
      (super.noSuchMethod(
        Invocation.method(
          #getInfo,
          [],
        ),
        returnValue: _i4.Future<_i2.ResponseWrapper<_i5.UserModel>>.value(
            _FakeResponseWrapper_0<_i5.UserModel>(
          this,
          Invocation.method(
            #getInfo,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.ResponseWrapper<_i5.UserModel>>.value(
                _FakeResponseWrapper_0<_i5.UserModel>(
          this,
          Invocation.method(
            #getInfo,
            [],
          ),
        )),
      ) as _i4.Future<_i2.ResponseWrapper<_i5.UserModel>>);
}
