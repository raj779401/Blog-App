part of 'sign_up_notifier.dart';

/// Represents the state of Signup in the application.
class SignUpState extends Equatable {
  SignUpState({this.signUpModelObj});

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [signUpModelObj];

  SignUpState copyWith({SignUpModel? signUpMode10bj}) {
    return SignUpState(
      signUpModelObj: signUpMode10bj ?? this.signUpModelObj,
    );
  }
}
