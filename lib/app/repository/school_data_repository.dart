import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../../config/network/dio_config.dart';
import '../../config/network/network_constants.dart';
import '../model/base_model.dart';
import '../ui/screens/authentication/login/model/user_role_response_model.dart';
import '../ui/screens/dashboard/sub_screens/category/model/grade_level_response_model.dart';

abstract class SchoolDataRepository {
  Future<ResponseBaseModel> getGradeLevelList();
  Future<ResponseBaseModel> getRoleForNotice();
}

class SchoolDataRepositoryImpl extends SchoolDataRepository {
  /// Get User Role API
  @override
  Future<ResponseBaseModel> getGradeLevelList() async {
    final response =
        await GetIt.I<DioProvider>().getBaseAPI(url: NetworkAPIs.kGradeLevelList);
    if (response.data != null) {
      if (response.statusCode == 200 || response.statusCode == 201 ) {
        GradeLevelResponse gradeLevelResponse =
        GradeLevelResponse.fromJson(response.data);
        return SuccessResponse(data: gradeLevelResponse);
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
