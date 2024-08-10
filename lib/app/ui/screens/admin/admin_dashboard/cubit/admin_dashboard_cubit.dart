import 'package:bloc/bloc.dart';
import 'package:book_nest_life_care/app/db/app_preferences.dart';
import 'package:book_nest_life_care/app/repository/authentication_repository.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';


part 'admin_dashboard_state.dart';

class AdminDashboardCubit extends Cubit<AdminDashboardState> {
  AuthenticationRepository repository;

  AdminDashboardCubit(
      {
    required this.repository,
  }
  ) : super(AdminDashboardInitial());

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  FocusNode emailFn = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFn = FocusNode();

  bool rememberMe = false;

  int selectedItemIndex = 0;

  bool isAdmin = true;

  bool isEmail = true;
  bool isLastPage = false;
  bool showSuffixIcon = false;

  AppPreferences pref = AppPreferences();

  // final debouncer = Debouncer(milliseconds: 1000);
  //
  // LanguageDetailsData? languageDetailsData;
  //
  //
  // var selectedLeaveType = LeaveTypeData();
  // var selectedStatusType = StatusDetailsData();

  String selectedLeaveTypeValue = '';
  String selectedStatusValue = '';

  Future<void> getData(BuildContext context) async {
    // languageDetailsData =
    //     await GetIt.I<AppPreferences>().getLanguageDetails() ??
    //         LanguageDetailsData();

    // emit(AdminDashboardSuccess(languageDetailsData!));
    showSuffixIcon = false;


  }

  void showHideSuffix(bool showBool) {
    emit(SuffixBoolChangedState(showBool: showSuffixIcon));
  }



  Future<void> logout() async {
    emit(AdminDashboardLoading());
    try {
      // final result = await repository.logout();
      // if (result != null) {
      //   emit(LogoutSuccess());
      // }
      // pref.isLoggedIn(value: false);
    } catch (e) {
      debugPrint(e.toString());
      emit(AdminDashboardError(error:  e.toString()));
    }
  }


  /// Login API
  ///
  /// required [email] as user entered email.
  /// required [password] as user entered password.
  // Future<void> getLogin({
  //   required TextEditingController emailController,
  //   required TextEditingController passwordController,
  // }) async {
  //   emit(AdminDashboardLoading());
  //   // await appPreferences.setIsRemember(rememberMe);
  //   final model = LoginRequest(
  //       email: emailController.text,
  //       password: passwordController.text,
  //       // userType: [selectedUserRole.name?.toLowerCase() ?? ""]
  //   );
  //
  //   printf("LoginReqModel---${model.toJson().toString()}");
  //
  //   final apiResponse = await repository.getLogin(requestModel: model);
  //
  //   if (apiResponse is FailedResponse) {
  //     emit(AdminDashboardError(error: apiResponse.errorMessage));
  //   } else if (apiResponse is SuccessResponse) {
  //     if (apiResponse.data != null && apiResponse.data != {}) {
  //       UserDetailsData loginResponse = apiResponse.data;
  //
  //       /// set API token for user
  //
  //       if (loginResponse != null) {
  //         if (loginResponse != null) {
  //           GetIt.I<AppPreferences>().setLoginDetails(
  //               loginResponse!);
  //           if (loginResponse!.email == "test@gmail.com") {
  //               printf("Admin------");
  //               isAdmin = true;
  //               if (isAdmin) {
  //                 pref.isAdmin(value: true);
  //               }
  //           } else {
  //             isAdmin = false;
  //             if (isAdmin) {
  //               pref.isAdmin(value: false);
  //             }
  //           }
  //         }
  //       }
  //
  //       /// set logged in for user
  //       GetIt.I<AppPreferences>().isLoggedIn(value: true);
  //
  //
  //
  //       emit(LoginSuccess(data: apiResponse.data));
  //       // emit(LoginSuccess());
  //       // Save user login state if "Remember Me" is checked
  //     }
  //   }
  // }

}
