import '../review_cart_page/widgets/listitem_item_widget.dart';
import 'controller/review_cart_controller.dart';
import 'models/listitem_item_model.dart';
import 'models/review_cart_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/widgets/app_bar/appbar_subtitle.dart';
import 'package:mykanjeeflutter/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanjeeflutter/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ReviewCartPage extends StatelessWidget {
  ReviewCartPage({Key? key})
      : super(
          key: key,
        );

  ReviewCartController controller =
      Get.put(ReviewCartController(ReviewCartModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: 412.h,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildListItem(),
              SizedBox(height: 400.v),
              _buildFrameFourteen(),
              SizedBox(height: 90.v),
              SizedBox(
                width: 108.h,
                child: Divider(
                  color: appTheme.gray90002,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_review_cart".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildListItem() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: controller
                .reviewCartModelObj.value.listitemItemList.value.length,
            itemBuilder: (context, index) {
              ListitemItemModel model = controller
                  .reviewCartModelObj.value.listitemItemList.value[index];
              return ListitemItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFourteen() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillDeeppurple5001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "lbl_total".tr,
                style: CustomTextStyles.titleMediumCabinBlack900,
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_total".tr,
                style: CustomTextStyles.bodyLargeBlack900,
              ),
            ],
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 99.h,
            text: "lbl_proceed".tr,
            margin: EdgeInsets.symmetric(vertical: 2.v),
            buttonStyle: CustomButtonStyles.fillOnPrimary,
            buttonTextStyle: CustomTextStyles.titleSmallRobotoGray50,
          ),
        ],
      ),
    );
  }
}
