part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();
}

class RegisterInitial extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterLoading extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterWithGoogle extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterWithApple extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterWithFacebook extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterSuccess extends RegisterState {
  final SignUpResponseModel data;

  const RegisterSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class NoCountryDetailsAvailable extends RegisterState {
  const NoCountryDetailsAvailable();

  @override
  List<Object> get props => [];
}

class UpdateList extends RegisterState {
  const UpdateList();

  @override
  List<Object> get props => [];
}

class CountryDetailsSuccess extends RegisterState {
  final CountryDetailsResponse data;

  const CountryDetailsSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class CountryDetailsLoaded extends RegisterState {
  final List<CountryData>? countryDetails;

  CountryDetailsLoaded({
    this.countryDetails,
    // Initialize bookedSlots in the constructor
  }); // Call super constructor with parkingDetails

  @override
  List<Object> get props => [countryDetails!];

// Include bookedSlots in props for comparison
}

class RegisterError extends RegisterState {
  final String errorMessage;

  const RegisterError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class CountryDetailsError extends RegisterState {
  final String errorMessage;

  const CountryDetailsError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class CountrySelectedIndexChangedState extends RegisterState {
  int? currentIndex;

  CountrySelectedIndexChangedState({this.currentIndex});

  @override
  List<Object> get props => [currentIndex!];
}

class CheckBoxBoolChangedState extends RegisterState {
  final bool? checkBoxBool;

  const CheckBoxBoolChangedState({this.checkBoxBool});

  @override
  List<Object> get props => [checkBoxBool!];
}

class SuffixBoolChangedState extends RegisterState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}
