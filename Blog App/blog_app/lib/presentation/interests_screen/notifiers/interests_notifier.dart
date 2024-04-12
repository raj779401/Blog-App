import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/interests_screen/models/interestschipview_item_model.dart';
import 'package:blog_app/presentation/interests_screen/models/interests_model.dart';

part 'interests_state.dart';

final interestsNotifier =
    StateNotifierProvider<InterestsNotifier, InterestsState>(
  (ref) => InterestsNotifier(
    InterestsState(
      interestsModeObj: InterestsModel(
        interestsChipViewItemList:
            List.generate(27, (index) => InterestsChipViewItemModel()),
      ),
    ),
  ),
);

class InterestsNotifier extends StateNotifier<InterestsState> {
  InterestsNotifier(InterestsState state) : super(state);

  void onselectedchipviewl(int index, bool value) {
    var newList = List<InterestsChipViewItemModel>.from(
        state.interestsModeObj!.interestschipviewItemList);
    newList[index] = newList[index].copyWith(isSe1ected: value);
    state = state.copyWith(
      interestsModeObj:
          state.interestsModeObj?.copyWith(interestschipviewItemList: newList),
    );
  }
}
