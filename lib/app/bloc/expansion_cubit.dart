import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'expansion_state.dart';

class ExpansionCubit extends Cubit<ExpansionState> {
  ExpansionCubit() : super(ExpansionInitial());
  bool isExpanded = false;
  bool isSelected = false;
  int selectedIndex = -1;
  String? selectedMainModuleKey;

  Future<void> expand() async {
    isExpanded = true;
    emit(ExpansionChangeState(isExpanded: isExpanded));
  }

  Future<void> collapse() async {
    isExpanded = false;
    emit(ExpansionChangeState(isExpanded: isExpanded));
  }

  void selectedItem(int index, String mainModuleKey) {
    isSelected = true;
    if (selectedMainModuleKey != mainModuleKey) {
      selectedIndex = -1;
    }
    selectedIndex = index;
    selectedMainModuleKey = mainModuleKey;
    emit(ExpansionSelectedColorState(
        isSelected: isSelected,
        index: index,
        selectedMainModuleKey: mainModuleKey));
  }
}
// import 'package:bloc/bloc.dart';
//
// enum ExpansionState { expanded, collapsed }
//
// class ExpansionCubit extends Cubit<ExpansionState> {
//   ExpansionCubit() : super(ExpansionState.collapsed);
//
//   void toggleExpansion() {
//     emit(state == ExpansionState.collapsed
//         ? ExpansionState.expanded
//         : ExpansionState.collapsed);
//   }
// }
