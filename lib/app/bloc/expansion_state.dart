part of 'expansion_cubit.dart';

abstract class ExpansionState extends Equatable {
  const ExpansionState();
}

class ExpansionInitial extends ExpansionState {
  @override
  List<Object?> get props => [];
}

class ExpansionChangeState extends ExpansionState {
  final bool isExpanded;

  const ExpansionChangeState({this.isExpanded = false});

  @override
  List<Object?> get props => [isExpanded];
}

class ExpansionSelectedColorState extends ExpansionState {
  final bool isSelected;
  final int index;
  final String? selectedMainModuleKey;

  const ExpansionSelectedColorState({this.isSelected = false,required this.index,this.selectedMainModuleKey});

  @override
  List<Object?> get props => [isSelected, index];
}
