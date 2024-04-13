part of 'terms_and_conditions_notifier.dart';

/// Represents the state of TermsAndConditions in the application.
class TermsAndConditionsState extends Equatable {
  TermsAndConditionsState({this.termsAndConditionModelObj});

  TermsAndConditionsModel? termsAndConditionModelObj;

  @override
  List<Object?> get props => [termsAndConditionModelObj];

  TermsAndConditionsState copyWith(
      {TermsAndConditionsModel? termsAndConditionModelObj}) {
    return TermsAndConditionsState(
      termsAndConditionModelObj:
          termsAndConditionModelObj ?? this.termsAndConditionModelObj,
    );
  }
}
