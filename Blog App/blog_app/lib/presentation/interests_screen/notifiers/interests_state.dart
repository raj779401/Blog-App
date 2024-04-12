part of 'interests_notifier.dart';

/// Represents the state of Interests in the application.
class InterestsState extends Equatable {
  InterestsState({this.interestsModeObj});

  InterestsModel? interestsModeObj;

  @override
  List<Object?> get props => [interestsModeObj];

  InterestsState copyWith({InterestsModel? interestsModelObj}) {
    return InterestsState(
      interestsModeObj: interestsModelObj ?? this.interestsModeObj,
    );
  }
}
