part of 'search_topics_notifier.dart';

/// Represents the state of SearchTopics in the application.
class SearchTopicsState extends Equatable {
  final TextEditingController searchController;
  final SearchTopicsModel searchTopicModelObj;

  SearchTopicsState({
    required this.searchController,
    required this.searchTopicModelObj,
  });

  @override
  List<Object?> get props => [searchController, searchTopicModelObj];

  SearchTopicsState copyWith({
    TextEditingController? searchController,
    SearchTopicsModel? searchTopicModelObj,
  }) {
    return SearchTopicsState(
      searchController: searchController ?? this.searchController,
      searchTopicModelObj: searchTopicModelObj ?? this.searchTopicModelObj,
    );
  }
}
