import 'package:blog_app/core/app_export.dart';

/// This class is used in the [peoplelist_item_widget] screen.
class PeoplelistItemModel {
  String? loremIpsumIsA;
  String? id;

  PeoplelistItemModel({
    this.loremIpsumIsA,
    this.id,
  }) {
    loremIpsumIsA = loremIpsumIsA ?? "Lorem Ipsum Dolor";
    id = id ?? "";
  }
}
