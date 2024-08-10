import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    navigateToScreen();
  }

  /// navigate to welcome screen
  void navigateToScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      emit(InitialiseComplete());
    });
  }
}
