import 'package:bloc/bloc.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:book_nest_life_care/app/db/app_preferences.dart';
import 'package:book_nest_life_care/app/model/base_model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/model/country_details_response.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/model/country_request.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/model/sign_up_request.model.dart';

import '../../../../../../config/app_constants.dart';
import '../../../../../repository/authentication_repository.dart';
import '../../login/model/login_response.model.dart';
import '../model/sign_up_response.model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  AuthenticationRepository repository;

  RegisterCubit({required this.repository}) : super(RegisterInitial());
  final formKey = GlobalKey<FormState>();

  TextEditingController firstNameCtl = TextEditingController();
  FocusNode firstNameFn = FocusNode();
  TextEditingController lastNameCtl = TextEditingController();
  FocusNode lastNameFn = FocusNode();
  TextEditingController emailCtl = TextEditingController();
  FocusNode emailFn = FocusNode();
  TextEditingController addressCtl = TextEditingController();
  FocusNode addressFn = FocusNode();
  TextEditingController passwordCtl = TextEditingController();
  FocusNode passwordFn = FocusNode();
  TextEditingController searchCtl = TextEditingController();
  FocusNode searchFn = FocusNode();
  TextEditingController confirmPasswordCtl = TextEditingController();
  TextEditingController countryCtl = TextEditingController();
  FocusNode confirmPasswordFn = FocusNode();


  AppPreferences pref = AppPreferences();

  bool isAdmin = true;

  var countryDetailsJson;
  int selectedItemIndex = 0;
  String selectedValue = '';

  var countryDetailsDataList = <CountryData>[];
  late CountryData countryDataForAPI;

  bool isChecked = true;

  bool isClient = false;
  bool showSuffixIcon = false;

  /// Get data from shared preference
  ///
  Future<void> getData() async {
    // isClient = await GetIt.I<AppPreferences>().getIsUserClient();
    // debugPrint('''Role::
    // ${isClient
    //     ? AppConstants.userRoleClient
    //     : AppConstants.userRoleDesigner}''');
    // getCountryDetails(search: "");
  }

  /// Get Country Details API
  ///
  // Future<void> getCountryDetails({String? search}) async {
  //   emit(RegisterLoading());
  //
  //   final model = SearchRequestModel(
  //       search: search ?? "",
  //       sortField: "name",
  //       sortOrder: "asc",
  //       itemsPerPage: 10,
  //       page: 1);
  //
  //   final apiResponse =
  //       await repository.getCountryList(pagination: false, requestModel: model);
  //
  //   if (apiResponse is FailedResponse) {
  //     emit(CountryDetailsError(apiResponse.errorMessage));
  //   } else if (apiResponse is SuccessResponse) {
  //     CountryDetailsResponse countryDetailsDataResponse = apiResponse.data;
  //
  //     if ((countryDetailsDataResponse.countryDetailsData!.countryData ?? [])
  //         .isNotEmpty) {
  //       updateCountryDetailsList(
  //           countryDetailsDataResponse.countryDetailsData!.countryData!);
  //       emit(CountryDetailsSuccess(data: apiResponse.data));
  //     } else {
  //       updateCountryDetailsList([]);
  //       emit(const NoCountryDetailsAvailable());
  //     }
  //   }
  // }
  //
  /// Get Register Details API
  ///
  Future<void> getSignUp() async {
    emit(RegisterLoading());

    final model = SignUpRequest(
        firstName: firstNameCtl.text,
        lastName: lastNameCtl.text,
        username: emailCtl.text,
        email: emailCtl.text,
        password: passwordCtl.text,);

    final apiResponse = await repository.getSignUp(requestModel: model);

    if (apiResponse is FailedResponse) {
      emit(RegisterError(apiResponse.errorMessage));
    } else if (apiResponse is SuccessResponse) {
      SignUpResponseModel signUpResponseModel = apiResponse.data;
      if (apiResponse.data != null) {
        emit(RegisterSuccess(data: signUpResponseModel));
      } else {
        emit(const RegisterError("Something Went Wrong"));
      }
    }
  }

  // void updateCountryDetailsList(List<CountryData> countryDetailsData) {
  //   countryDetailsDataList.clear();
  //   countryDetailsDataList.addAll(countryDetailsData);
  //   emit(CountryDetailsLoaded(countryDetails: countryDetailsData));
  // }
  //
  // Future<void> signInWithGoogle() async {
  //   final response = await repository.signInWithGoogle();
  // }
  //
  // Future<void> signInWithFacebook() async {
  //   final response = await repository.signInWithFacebook();
  // }
  //
  // Future<void> signInWithApple() async {
  //   final response = await repository.appleSignIn();
  // }

  // void selectCountry(CountryTypeData country) => emit(country);
  // void updateSelectedItemIndex(int index) {
  //   selectedItemIndex = index;
  //
  //   emit(CountrySelectedIndexChangedState(currentIndex: selectedItemIndex));
  // }

  // void selectCountry(CountryTypeData country) => emit(country);
  void updateCheckBoxBool() {
    isChecked = !isChecked;

    emit(CheckBoxBoolChangedState(checkBoxBool: isChecked));
  }

  bool validate(BuildContext context) {
    if (!isChecked) {
      Utils.showErrorMessage(
          context: context,
          message:" appStrings(context).termsAndConditionValidationMsg");
      return false;
    }
    return true;
  }
}
