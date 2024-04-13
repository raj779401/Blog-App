import 'package:equatable/equatable.dart';
import 'package:blog_app/core/app_export.dart';
import 'peoplelist_item_model.dart';
import 'stories_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.peopleListItemList = const [],
    this.storiesItemList = const [],
  });

  List<PeoplelistItemModel> peopleListItemList;
  List<StoriesItemModel> storiesItemList;

  HomeModel copyWith({
    List<PeoplelistItemModel>? peopleListItemList,
    List<StoriesItemModel>? storiesItemList,
  }) {
    return HomeModel(
      peopleListItemList: peopleListItemList ?? this.peopleListItemList,
      storiesItemList: storiesItemList ?? this.storiesItemList,
    );
  }

  @override
  List<Object?> get props => [peopleListItemList, storiesItemList];
}
