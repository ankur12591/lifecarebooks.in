import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleCubit extends Cubit<int> {
  ToggleCubit(this.items) : super(0);

  final List<String> items;

  void selectItem(int index) {
    emit(index);
  }
}
