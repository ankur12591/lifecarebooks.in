import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../../config/network/dio_config.dart';
import '../../config/network/network_constants.dart';
import '../model/base_model.dart';
import '../ui/screens/authentication/login/model/user_role_response_model.dart';

abstract class RoleRepository {
  Future<ResponseBaseModel> getUserRoleList();
  Future<ResponseBaseModel> getRoleForNotice();
}

class RoleRepositoryImpl extends RoleRepository {
  /// Get User Role API
  @override
  Future<ResponseBaseModel> getUserRoleList() async {
    final response =
        await GetIt.I<DioProvider>().getBaseAPI(url: NetworkAPIs.kUserRole);
    if (response.data != null) {
      if (response.statusCode == 200) {
        UserRoleResponseModel userRoleResponse =
            UserRoleResponseModel.fromJson(response.data);
        return SuccessResponse(data: userRoleResponse);
      } else {
        debugPrint("Response-----------${response.data.toString()}");
        return FailedResponse(errorMessage: response.data);
      }
    } else {
      return FailedResponse(errorMessage: "No internet connected!");
    }
  }
  /// Get Role for Notice API
  @override
  Future<ResponseBaseModel> getRoleForNotice() async {
    final response =
    await GetIt.I<DioProvider>().getBaseAPIWithToken(url: NetworkAPIs.kRoleForNotice);
    if (response.data != null) {
      if (response.statusCode == 200) {
        UserRoleResponseModel userRoleResponse =
        UserRoleResponseModel.fromJson(response.data);
        return SuccessResponse(data: userRoleResponse);
      } else {
        debugPrint("Response-----------${response.data.toString()}");
        return FailedResponse(errorMessage: response.data);
      }
    } else {
      return FailedResponse(errorMessage: "No internet connected!");
    }
  }
}
