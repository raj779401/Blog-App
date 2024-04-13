part of 'explore_notifier.dart';

/// Represents the state of Explore in the application.
class ExploreState extends Equatable {
  final TextEditingController? searchController;
  final ExploreModel? exploreModelObj;

  ExploreState({
    this.searchController,
    this.exploreModelObj,
  });

  @override
  List<Object?> get props => [
        searchController,
        exploreModelObj,
      ];

  ExploreState copyWith({
    TextEditingController? searchController,
    ExploreModel? exploreModelObj,
  }) {
    return ExploreState(
      searchController: searchController ?? this.searchController,
      exploreModelObj: exploreModelObj ?? this.exploreModelObj,
    );
  }
}
