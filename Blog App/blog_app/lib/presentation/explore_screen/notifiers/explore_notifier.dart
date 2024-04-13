import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/explore_screen/models/stories1_item_model.dart';
import 'package:blog_app/presentation/explore_screen/models/explore_model.dart';
part 'explore_state.dart';

final exploreNotifier = StateNotifierProvider<ExploreNotifier, ExploreState>(
  (ref) => ExploreNotifier(
    ExploreState(
      searchController: TextEditingController(),
      exploreModelObj: ExploreModel(
        stories1ItemList: [
          Stories1IemModel(
            home: "LOGO",
            easyToUse: "Lorem Ipsum dolor set amet",
            duration: "16 days ago",
            time: "3 min read",
          ),
          Stories1IemModel(
            home: "LOGO",
            easyToUse: "Lorem Ipsum dolor set amet",
            duration: "16 days ago",
            time: "3 min read",
          ),
          Stories1IemModel(
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

/// A notifier that manages the state of an Explore according to the event that is dispatched to it.
class ExploreNotifier extends StateNotifier<ExploreState> {
  ExploreNotifier(ExploreState state) : super(state);
}
