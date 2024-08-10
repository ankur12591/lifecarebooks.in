import 'package:book_nest_life_care/app/db/app_preferences.dart';
import 'package:book_nest_life_care/app/repository/role_repository.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/login_response.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/user_role_response_model.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import '../../../../../model/base_model.dart';
// import '../../../../../model/side_drawer_model.dart';
// import '../../../../../repository/authentication_repository.dart';
import '../model/login_request.model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // AuthenticationRepository repository;
  RoleRepository roleRepository;

  LoginCubit({
    // required this.repository,
    required this.roleRepository})
      : super(LoginInitial());
  AppPreferences appPreferences = AppPreferences();
  String? email = "";
  String? password = "";
  TextEditingController roleController = TextEditingController();
  FocusNode roleFn = FocusNode();
  TextEditingController emailController = TextEditingController();
  FocusNode emailFn = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFn = FocusNode();

  bool rememberMe = false;
  bool? rememberedData = false;
  var selectedRole = "";
  // SideDrawerDetailsData? sideDrawerDetailsData;

  List<UserRoleData>? userRoleDetailsDataList;
  List<String>? userRoleNameList;

  // List<String>? userRole = <String>[];

  String selectedRoleValue = '';
  var selectedUserRole = UserRoleData();

  Future<void> getData(BuildContext context) async {
    await getUserRole();
    email = await GetIt.I<AppPreferences>().getEmail();
    password = await GetIt.I<AppPreferences>().getPassword();
    UserRoleData? userRole = await GetIt.I<AppPreferences>().getUserRole();
    selectedUserRole = userRole ?? UserRoleData();
    selectedRoleValue = userRole?.name ?? '';
    roleController.text = userRole?.name ?? '';

    emailController.text = email ?? "";
    passwordController.text = password ?? "";

    emit(LoginToggleRememberMe(checkBoxBool: rememberMe));
  }

  void login() async {
    await handleRemembered();

    printf("$selectedUserRole");
    getLogin(
      emailController: emailController,
      passwordController: passwordController,
    );
  }

  Future<void> getUserRole() async {
    emit(LoginLoading());

    final apiResponse = await roleRepository.getUserRoleList();

    if (apiResponse is FailedResponse) {
      emit(LoginError(apiResponse.errorMessage));
    } else if (apiResponse is SuccessResponse) {
      UserRoleResponseModel userRoleResponse = apiResponse.data;
      if (apiResponse.data != null && apiResponse.data != {}) {
        // updateUerRoleList(userRoleResponse.data!);
        emit(LoginUserRoleSuccess(data: apiResponse.data));
      }
    }
  }

  Future<void> updateUerRoleList(List<UserRoleData> userRoleDetailsData) async {
    userRoleNameList =
        userRoleDetailsData.map((e) => (e.name ?? "").toLowerCase()).toList();
    printf(userRoleNameList);

    // userRoleNameList?.addAll(userRoleDetailsDataList)
    emit(UserRoleDetailsLoaded(userRoleDetails: userRoleDetailsData));
  }

  /// Login API
  ///
  /// required [email] as user entered email.
  /// required [password] as user entered password.
  Future<void> getLogin({
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) async {
    emit(LoginLoading());
    await appPreferences.setIsRemember(rememberMe);
    final model = LoginRequest(
        email: emailController.text,
        password: passwordController.text,
        userType: userRoleNameList /*?? ['teacher','parents','student']*/
        // userType: [selectedUserRole.name?.toLowerCase() ?? ""]
        );

    printf("LoginReqModel---${model.toJson().toString()}");

    // final apiResponse = await repository.getLogin(requestModel: model);
    //
    // if (apiResponse is FailedResponse) {
    //   emit(LoginError(apiResponse.errorMessage));
    // } else if (apiResponse is SuccessResponse) {
    //   // LoginResponse loginResponse = apiResponse.data;
    //   if (apiResponse.data != null && apiResponse.data != {}) {
    //     /// set API token for user
    //     GetIt.I<AppPreferences>()
    //         .saveApiToken(value: apiResponse.data.loginResponseData?.token);
    //
    //     // if (loginResponse.loginResponseData != null) {
    //     //   if (loginResponse.loginResponseData!.userDetailsData != null) {
    //     //     GetIt.I<AppPreferences>().setLoginDetails(
    //     //         loginResponse.loginResponseData!.userDetailsData!);
    //     //     // final data = SideDrawerDetailsData();
    //     //     // data.rolePermission = loginResponse
    //     //     //         .loginResponseData!.userDetailsData!.rolePermission ??
    //     //     //     [];
    //     //     // sideDrawerDetailsData = data;
    //     //     // setDrawerData();
    //     //   }
    //     // }
    //
    //     /// set logged in for user
    //     GetIt.I<AppPreferences>().isLoggedIn(value: true);
    //
    //     emit(LoginSuccess(/*data: apiResponse.data*/));
    //     // emit(LoginSuccess());
    //     // Save user login state if "Remember Me" is checked
    //   }
    // }
  }
  //
  // Future<void> setDrawerData() async {
  //   var rolePermissionBox =
  //       await Hive.openBox<SideDrawerDetailsData>('sideDrawerDetailsData');
  //   rolePermissionBox.put(
  //       "menu", sideDrawerDetailsData ?? SideDrawerDetailsData());
  // }

  /// Handle Remember Method
  ///
  handleRemembered() async {
    await appPreferences.setEmail(emailController.text);
    await appPreferences.setPassword(passwordController.text);
    // await appPreferences.setUserRole(roleController.text);
    await appPreferences.setUserRole(selectedUserRole);
    await appPreferences.setIsRemember(true);

    emit(LoginToggleRememberMe(checkBoxBool: rememberMe));
    printf("Credentials saved locally");
  }

  void toggleRememberMe() {
    rememberMe = !rememberMe;
    emit(LoginToggleRememberMe(checkBoxBool: rememberMe));
  }
}
