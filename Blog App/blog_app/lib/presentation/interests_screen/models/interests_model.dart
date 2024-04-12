import 'package:equatable/equatable.dart';
import 'interestschipview_item_model.dart';

/// This class defines the variables used in the [interests_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsModel extends Equatable {
  final List<InterestsChipViewItemModel> interestsChipViewItemList;

  InterestsModel({this.interestsChipViewItemList = const []});

  InterestsModel copyWith(
      {List<InterestsChipViewItemModel>? interestsChipViewItemList}) {
    return InterestsModel(
      interestsChipViewItemList:
          interestsChipViewItemList ?? this.interestsChipViewItemList,
    );
  }

  @override
  List<Object?> get props => [interestsChipViewItemList];
}
