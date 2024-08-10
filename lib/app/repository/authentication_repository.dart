import 'dart:convert';

import 'package:book_nest_life_care/config/network/graphql_service.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/forgot_password/model/forgot_password_request.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/login_request.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/login_response.model.dart';
// import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/social_media_login_request.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/model/country_details_response.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/model/country_request.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/model/sign_up_request.model.dart';
import 'package:book_nest_life_care/config/network/dio_config.dart';
import 'package:book_nest_life_care/config/network/network_constants.dart';
// import 'package:book_nest_life_care/config/services/auth_service.dart';
// import 'package:book_nest_life_care/config/utility.dart';

import '../model/base_model.dart';
import '../ui/screens/authentication/register/model/sign_up_response.model.dart';

abstract class AuthenticationRepository {
  // Future<ResponseBaseModel> getCountryList({
  //   required SearchRequestModel requestModel,
  //   required bool pagination,
  // });
  //
  // Future<ResponseBaseModel> getSignUp({
  //   required SignUpRequest requestModel,
  // });
  //
  Future<ResponseBaseModel> fetchUserRoles({
    required String email,
    required String userId,
  });

  Future<ResponseBaseModel> getLogin({
    required LoginRequest requestModel,
  });

  Future<ResponseBaseModel> getSignUp({
    required SignUpRequest requestModel,
  });

  // Future<bool?> logout();
  //
  // Future<ResponseBaseModel> verifyEmail();
  //
  // Future<ResponseBaseModel> forgotPassword();
  //
  // Future<ResponseBaseModel> changePassword({
  //   ChangePasswordRequestModel? requestModel,
  // });
  //
  // Future<ResponseBaseModel> getUserDetails();
  //
  // Future<dynamic> appleSignIn();
  //
  // Future<dynamic> signInWithGoogle();
  //
  // Future<dynamic> signInWithFacebook();
}

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  // final GraphQLService _graphqlService = GetIt.I<GraphQLService>();

  //
  // @override
  // Future<ResponseBaseModel> getCountryList({
  //   required SearchRequestModel requestModel,
  //   required bool pagination,
  // }) async {
  //   if (await Utility.isConnected()) {
  //     var queryParams = '${NetworkParams.kPagination}=$pagination';
  //
  //     final response = await GetIt.I<DioProvider>().postBaseAPIWithMobile(
  //       url: NetworkAPIs.kCountry + queryParams,
  //       data: requestModel.toJson(),
  //     );
  //     if (response.data != null) {
  //       if (response.statusCode == 200) {
  //         CountryDetailsResponse countryDetailsResponse =
  //             CountryDetailsResponse.fromJson(response.data);
  //         return SuccessResponse(data: countryDetailsResponse);
  //       } else {
  //         print("Response-----------${response.data.toString()}");
  //         return FailedResponse(errorMessage: response.data);
  //       }
  //     } else {
  //       return FailedResponse(errorMessage: response.statusMessage ?? "");
  //     }
  //   } else {
  //     return FailedResponse(errorMessage: "No internet connected!");
  //   }
  // }

  @override
  Future<ResponseBaseModel> getSignUp({
    required SignUpRequest requestModel,
  }) async {
    if (await Utils.isConnected()) {
      final response = await GetIt.I<DioProvider>().postBaseAPI(
        url: NetworkAPIs.kSignUp,
        data: requestModel.toJson(),
      );
      if (response.data != null) {
        if (response.statusCode == 200 || response.statusCode == 201) {
          SignUpResponseModel registerResponse =
          SignUpResponseModel.fromJson(response.data);
          return SuccessResponse(data: registerResponse);
        } else {
          debugPrint("Response-----------${response.data.toString()}");
          return FailedResponse(errorMessage: response.data);
        }
      } else {
        return FailedResponse(errorMessage: response.data ?? "");
      }
    } else {
      return FailedResponse(errorMessage: "No internet connected!");
    }
  }



  @override
//   Future<bool?> logout() async {
//     const String logoutMutation = r'''
//  mutation logout($input: LogOutInput!) {
//   logOut(input: $input) {
//     ok
//   }
// }
//     ''';
//
//     final result = await _graphqlService.performMutation(
//       logoutMutation,
//       variables: {
//         "input": {"clientMutationId": ""}
//       },
//     );
//
//     if (result.hasException) {
//       final errorMessage = result.exception?.graphqlErrors.isNotEmpty ?? false
//           ? result.exception!.graphqlErrors[0].message
//           : 'Unknown error occurred';
//       throw Exception(errorMessage);
//     }
//
//     return result.data?['logOut']['ok'];
//   }


  // @override
  // Future<ResponseBaseModel> getForgotPassword({
  //   required ForgotPasswordRequest requestModel,
  // }) async {
  //   if (await Utility.isConnected()) {
  //     final response = await GetIt.I<DioProvider>().postBaseAPIWithMobile(
  //       url: NetworkAPIs.kForgotPassword,
  //       data: requestModel.toJson(),
  //     );
  //     if (response.data != null) {
  //       if (response.statusCode == 200) {
  //         MessageData data = MessageData.fromJson(response.data);
  //         return SuccessResponse(data: data);
  //       } else {
  //         debugPrint("Response-----------${response.data.toString()}");
  //         return FailedResponse(errorMessage: response.data);
  //       }
  //     } else {
  //       return FailedResponse(errorMessage: response.statusMessage ?? "");
  //     }
  //   } else {
  //     return FailedResponse(errorMessage: "No internet connected!");
  //   }
  // }

  @override
  Future<ResponseBaseModel> getLogin({
    required LoginRequest requestModel,
  }) async {
    if (await Utils.isConnected()) {
      final response = await GetIt.I<DioProvider>().postBaseAPI(
        url: NetworkAPIs.kLogin,
        data: requestModel.toJson(),
      );
      if (response.data != null) {
        if (response.statusCode == 200 || response.statusCode == 201) {
          UserDetailsData loginResponse = UserDetailsData.fromJson(response.data);
          final userId = response.data['objectId'];
          final email = response.data['email'];
          final sessionToken = response.data['sessionToken'];

          // await fetchUserRoles(userId: userId, email: email /*sessionToken*/);
          return SuccessResponse(data: loginResponse);
        } else {
          debugPrint("Response-----------${response.data.toString()}");
          return FailedResponse(errorMessage: response.data);
        }
      } else {
        return FailedResponse(errorMessage: response.statusMessage ?? "");
      }
    } else {
      return FailedResponse(errorMessage: "No internet connected!");
    }
  }


  @override
  Future<ResponseBaseModel> fetchUserRoles({
    required String userId,
    required String email,
  }) async {
    if (await Utils.isConnected()) {
      final response = await GetIt.I<DioProvider>().getBaseAPI(
        url: NetworkAPIs.kLogin,
        queryParams: {
      'where': jsonEncode({
      'users': {
      '__type': 'Pointer',
      'className': '_User',
      'objectId': userId,
      'email': email,
      }
      }),
      },
        // data: requestModel.toJson(),
      );
      if (response.data != null) {
        if (response.statusCode == 200 || response.statusCode == 201) {
          LoginResponse loginResponse = LoginResponse.fromJson(response.data);
          return SuccessResponse(data: loginResponse);
        } else {
          debugPrint("Response-----------${response.data.toString()}");
          return FailedResponse(errorMessage: response.data);
        }
      } else {
        return FailedResponse(errorMessage: response.statusMessage ?? "");
      }
    } else {
      return FailedResponse(errorMessage: "No internet connected!");
    }
  }

  // Future<void> fetchUserRoles(String userId, String sessionToken) async {
  //   try {
  //     // final response = await dio.get(
  //     final response = await GetIt.I<DioProvider>().getBaseAPI(
  //     url:
  //       'roles',
  //       queryParams: {
  //         'where': jsonEncode({
  //           'users': {
  //             '__type': 'Pointer',
  //             'className': '_User',
  //             'objectId': userId,
  //           }
  //         }),
  //       },
  //       // options: Options(
  //       //   headers: {
  //       //     'X-Parse-Session-Token': sessionToken,
  //       //   },
  //       // ),
  //     );
  //     print('User roles: ${response.data}');
  //   } on DioError catch (e) {
  //     print('Failed to fetch user roles: ${e.response?.data}');
  //   }
  // }


// @override
  // Future<ResponseBaseModel> changePassword({
  //   ChangePasswordRequestModel? requestModel,
  // }) async {
  //   if (await Utility.isConnected()) {
  //     final response = await GetIt.I<DioProvider>().postBaseAPIWithToken(
  //       url: NetworkAPIs.kChangePassword,
  //       data: requestModel,
  //     );
  //     if (response.data != null) {
  //       if (response.statusCode == 200) {
  //         MessageData data = MessageData.fromJson(response.data);
  //         return SuccessResponse(data: data);
  //       } else {
  //         debugPrint("Response-----------${response.data.toString()}");
  //         return FailedResponse(errorMessage: response.data);
  //       }
  //     } else {
  //       return FailedResponse(errorMessage: response.statusMessage ?? "");
  //     }
  //   } else {
  //     return FailedResponse(errorMessage: "No internet connected!");
  //   }
  // }
  //
  // @override
  // Future<ResponseBaseModel> forgotPassword() async {
  //   return FailedResponse(errorMessage: "");
  // }
  //
  // @override
  // Future<ResponseBaseModel> getUserDetails() async {
  //   return FailedResponse(errorMessage: "");
  // }
  //
  // @override
  // Future<dynamic> signInWithGoogle() async {
  //   final response = await authServiceInstance.signInWithGoogle();
  // }
  //
  // @override
  // Future<dynamic> signInWithFacebook() async {
  //   final response = await authServiceInstance.signInWithFacebook();
  // }
  //
  // @override
  // Future<ResponseBaseModel> register() async {
  //   return FailedResponse(errorMessage: "");
  // }
  //
  // @override
  // Future<ResponseBaseModel> verifyEmail() async {
  //   return FailedResponse(errorMessage: "");
  // }
  //
  // @override
  // Future<dynamic> appleSignIn() async {
  //   final response = await authServiceInstance.signInWithApple();
  //   return response;
  // }
}
