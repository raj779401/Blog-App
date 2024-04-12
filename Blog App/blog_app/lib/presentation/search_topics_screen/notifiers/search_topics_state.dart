import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/presentation/search_topics/models/search_topics_model.dart';

part 'search_topics_notifier.dart';

/// Represents the state of SearchTopics in the application.
class SearchTopicsState extends Equatable {
  SearchTopicsState({
    this.searchController,
    this.searchTopicModelObj,
  });

  final TextEditingController? searchController;
  final SearchTopicsModel? searchTopicModelObj;

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
