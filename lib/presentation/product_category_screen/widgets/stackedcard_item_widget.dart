import '../controller/product_category_controller.dart';
import '../models/stackedcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';

// ignore: must_be_immutable
class StackedcardItemWidget extends StatelessWidget {
  StackedcardItemWidget(
    this.stackedcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StackedcardItemModel stackedcardItemModelObj;

  var controller = Get.find<ProductCategoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 186.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMedia,
            height: 158.v,
            width: 186.h,
          ),
          SizedBox(height: 18.v),
          Container(
            width: 103.h,
            margin: EdgeInsets.only(left: 16.h),
            child: Obx(
              () => Text(
                stackedcardItemModelObj.titleText!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Obx(
              () => Text(
                stackedcardItemModelObj.priceText!.value,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
