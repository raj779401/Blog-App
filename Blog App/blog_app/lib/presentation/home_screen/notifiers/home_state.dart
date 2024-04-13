part of 'home_notifier.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  final HomeModel? homeModelObj;

  HomeState({this.homeModelObj});

  @override
  List<Object?> get props => [homeModelObj];

  HomeState copyWith({HomeModel? homeModelObj}) {
    return HomeState(homeModelObj: homeModelObj);
  }
}
