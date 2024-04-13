import 'package:flutter/material.dart';
import 'package:blog_app/presentation/home_screen/models/peoplelist_item_model.dart';
import 'package:blog_app/core/app_export.dart';

class PeopleListItemWidget extends StatelessWidget {
  final PeoplelistItemModel peopleListItemModelObj;

  PeopleListItemWidget(this.peopleListItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnail,
                height: 80.0.adaptSize,
                width: 80.0.adaptSize,
                radius: BorderRadius.circular(40.h),
              ),
              SizedBox(height: 9.v),
              SizedBox(
                height: 72.v,
                child: Text(
                  peopleListItemModelObj.loremIpsumIsA!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBlack900.copyWith(
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
