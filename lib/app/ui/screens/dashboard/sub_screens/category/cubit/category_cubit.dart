import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../utils/ui_components.dart';
import '../../../../../../model/base_model.dart';
import '../../../../../../repository/school_data_repository.dart';
import '../model/grade_level_response_model.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  SchoolDataRepository repository;

  CategoryCubit({
    required this.repository,
  }) : super(CategoryInitial());

  final formKey = GlobalKey<FormState>();

  List<String>? gradeLevelNameList;

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

    // emit(CategorySuccess(languageDetailsData!));
    getGradeLevel();
  }

  Future<void> getGradeLevel() async {
    emit(CategoryLoading());

    final apiResponse = await repository.getGradeLevelList();

    if (apiResponse is FailedResponse) {
      emit(CategoryError(error: apiResponse.errorMessage));
    } else if (apiResponse is SuccessResponse) {
      GradeLevelResponse gradeLevelResponse = apiResponse.data;
      if (apiResponse.data != null && apiResponse.data != {}) {
        updateGradeLevelList(gradeLevelResponse.results);
        emit(CategoryGradeLevelSuccess(/*data: apiResponse.data*/));
      }
    }
  }

  Future<void> updateGradeLevelList(List<GradeLevel> gradeLevelData) async {
    gradeLevelNameList =
        gradeLevelData.map((e) => (e.name ?? "")).toList();
    printf(gradeLevelNameList);

    // userRoleNameList?.addAll(userRoleDetailsDataList)
    emit(GradeLevelListState(gradeLevelData: gradeLevelData));
  }
// /// Leave Type List API
// ///
// Future<void> getLeaveTypeList(BuildContext context) async {
//   emit(CategoryLoading());
//
//   final model = LeaveTypeRequestModel(
//     status: "1",
//   );
//   await context.read<ClassSectionCommonCubit>()
//       .fetchLeaveTypeList(model: model);
//   emit(APISuccessForCategory());
// }
}
