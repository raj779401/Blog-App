import 'package:equatable/equatable.dart';

/// This class is used in the [interestschipview item_widget] screen.
class InterestsChipViewItemModel extends Equatable {
  InterestsChipViewItemModel({
    String? chips,
    bool? isSelected,
  })  : chips = chips ?? "Art",
        isSelected = isSelected ?? false;

  String? chips;
  bool? isSelected;

  InterestsChipViewItemModel copyWith({
    String? chips,
    bool? isSelected,
  }) {
    return InterestsChipViewItemModel(
      chips: chips ?? this.chips,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [chips, isSelected];
}
