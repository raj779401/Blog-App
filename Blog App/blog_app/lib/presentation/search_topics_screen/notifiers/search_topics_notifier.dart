import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/search_topics_screen/models/search_topic_model.dart';
part 'search_topics_state.dart';

final searchTopicsNotifier =
    StateNotifierProvider<SearchTopicsNotifier, SearchTopicsState>(
  (ref) => SearchTopicsNotifier(SearchTopicsState(
    searchController: TextEditingController(),
    searchTopicModelObj: SearchTopicsModel(), // corrected variable name
  )),
);

class SearchTopicsNotifier extends StateNotifier<SearchTopicsState> {
  SearchTopicsNotifier(SearchTopicsState state) : super(state);
}
