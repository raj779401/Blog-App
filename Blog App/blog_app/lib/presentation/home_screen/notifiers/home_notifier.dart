import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/home_screen/models/peoplelist_item_model.dart';
import 'package:blog_app/presentation/home_screen/models/stories_item_model.dart';
import 'package:blog_app/presentation/home_screen/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(
    HomeState(
      homeModelObj: HomeModel(
        peopleListItemList: [
          PeoplelistItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
          PeoplelistItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
          PeoplelistItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
          PeoplelistItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
        ],
        storiesItemList: [
          StoriesItemModel(
            home: "LOGO",
            easyToUse: "Lorem Ipsum dolor set amet",
            duration: "16 days ago",
            time: "3 min read",
          ),
          StoriesItemModel(
            home: "LOGO",
            easyToUse: "Lorem Ipsum dolor set amet",
            duration: "16 days ago",
            time: "3 min read",
          ),
          StoriesItemModel(
            home: "LOGO",
            easyToUse: "Lorem Ipsum dolor set amet",
            duration: "16 days ago",
            time: "3 min read",
          ),
        ],
      ),
    ),
  ),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}
