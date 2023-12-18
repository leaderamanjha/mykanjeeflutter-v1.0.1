import '../controller/product_category_controller.dart';
import '../models/stackedcard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';

// ignore: must_be_immutable
class Stackedcard1ItemWidget extends StatelessWidget {
  Stackedcard1ItemWidget(
    this.stackedcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Stackedcard1ItemModel stackedcard1ItemModelObj;

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
            height: 182.v,
            width: 186.h,
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Obx(
              () => Text(
                stackedcard1ItemModelObj.title!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Obx(
              () => Text(
                stackedcard1ItemModelObj.subhead!.value,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
