part of 'privacy_policy_notifier.dart';

/// Represents the state of Privacy Policy in the application.
class PrivacyPolicyState extends Equatable {
  final PrivacyPolicyModel? privacyPolicyModelObj;

  PrivacyPolicyState({this.privacyPolicyModelObj});

  @override
  List<Object?> get props => [privacyPolicyModelObj];

  PrivacyPolicyState copyWith({PrivacyPolicyModel? privacyPolicyModel}) {
    return PrivacyPolicyState(
      privacyPolicyModelObj: privacyPolicyModel ?? this.privacyPolicyModelObj,
    );
  }
}
