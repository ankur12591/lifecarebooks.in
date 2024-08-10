import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';


part 'class_books_state.dart';

class ClassBooksCubit extends Cubit<ClassBooksState> {
  // LeaveManagementRepository repository;

  ClassBooksCubit(
  //     {
  //   required this.repository,
  // }
  ) : super(ClassBooksInitial());

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  FocusNode emailFn = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFn = FocusNode();

  bool rememberMe = false;

  int selectedItemIndex = 0;


  bool isEmail = true;
  bool isLastPage = false;
  bool showSuffixIcon = false;

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

    // emit(ClassBooksSuccess(languageDetailsData!));
    showSuffixIcon = false;


  }

  void showHideSuffix(bool showBool) {
    emit(SuffixBoolChangedState(showBool: showSuffixIcon));
  }

  // /// Leave Type List API
  // ///
  // Future<void> getLeaveTypeList(BuildContext context) async {
  //   emit(ClassBooksLoading());
  //
  //   final model = LeaveTypeRequestModel(
  //     status: "1",
  //   );
  //   await context.read<ClassSectionCommonCubit>()
  //       .fetchLeaveTypeList(model: model);
  //   emit(APISuccessForClassBooks());
  // }

}
