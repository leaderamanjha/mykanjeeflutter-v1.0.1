import '../product_category_screen/widgets/stackedcard1_item_widget.dart';
import '../product_category_screen/widgets/stackedcard_item_widget.dart';
import 'controller/product_category_controller.dart';
import 'models/stackedcard1_item_model.dart';
import 'models/stackedcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanjeeflutter/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanjeeflutter/widgets/custom_icon_button.dart';
import 'package:mykanjeeflutter/widgets/custom_search_view.dart';
import 'package:mykanjeeflutter/widgets/custom_text_form_field.dart';

class ProductCategoryScreen extends GetWidget<ProductCategoryController> {
  const ProductCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 412.h,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      _buildTopAppBar(),
                      SizedBox(height: 16.v),
                      _buildFrameFive(),
                      SizedBox(height: 20.v),
                      _buildThirtyFour(),
                      SizedBox(height: 12.v),
                      _buildThirtyTwo(),
                      SizedBox(height: 10.v),
                      SizedBox(
                          width: 108.h,
                          child: Divider(color: appTheme.gray90002)),
                      SizedBox(height: 14.v),
                      _buildStackedCard(),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(left: 210.h, right: 16.h),
                              decoration: AppDecoration.fillGray,
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMedia,
                                    height: 1.v,
                                    width: 186.h),
                                SizedBox(height: 226.v),
                                Text("lbl_sarees_6".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 250.v),
                                Text("lbl_3_500".tr,
                                    style: theme.textTheme.bodyMedium)
                              ]))),
                      SizedBox(height: 14.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildTopAppBar() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.v),
        decoration: AppDecoration.fillGray5001,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(
              height: 24.v,
              leadingWidth: 412.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgIcon,
                  margin: EdgeInsets.fromLTRB(20.h, 4.v, 376.h, 4.v),
                  onTap: () {
                    onTapIcon();
                  })),
          SizedBox(height: 51.v),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child:
                  Text("lbl_sarees".tr, style: theme.textTheme.headlineMedium)),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildFrameFive() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_hinted_search_text".tr)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomIconButton(
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  padding: EdgeInsets.all(16.h),
                  decoration: IconButtonStyleHelper.fillDeepPurple,
                  child: CustomImageView(imagePath: ImageConstant.imgSearch)))
        ]));
  }

  /// Section Widget
  Widget _buildThirtyFour() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_new_listing".tr, style: CustomTextStyles.bodyLargeBlack900),
          SizedBox(height: 7.v),
          SizedBox(
              height: 258.v,
              child: Obx(() => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 8.h);
                  },
                  itemCount: controller.productCategoryModelObj.value
                      .stackedcardItemList.value.length,
                  itemBuilder: (context, index) {
                    StackedcardItemModel model = controller
                        .productCategoryModelObj
                        .value
                        .stackedcardItemList
                        .value[index];
                    return StackedcardItemWidget(model);
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildThirtyTwo() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_all_listing".tr, style: CustomTextStyles.bodyLargeBlack900),
          SizedBox(height: 8.v),
          SizedBox(
              height: 238.v,
              child: Obx(() => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 8.h);
                  },
                  itemCount: controller.productCategoryModelObj.value
                      .stackedcard1ItemList.value.length,
                  itemBuilder: (context, index) {
                    Stackedcard1ItemModel model = controller
                        .productCategoryModelObj
                        .value
                        .stackedcard1ItemList
                        .value[index];
                    return Stackedcard1ItemWidget(model);
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildStackedCard() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 52.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomTextFormField(
                  width: 186.h,
                  controller: controller.editTextController,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  fillColor: appTheme.gray300),
              SizedBox(height: 28.v),
              CustomImageView(
                  imagePath: ImageConstant.imgMedia, height: 1.v, width: 186.h),
              SizedBox(height: 226.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("lbl_sarees_5".tr,
                      style: theme.textTheme.bodyLarge)),
              SizedBox(height: 250.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child:
                      Text("lbl_3_500".tr, style: theme.textTheme.bodyMedium))
            ])));
  }

  /// Navigates to the previous screen.
  onTapIcon() {
    Get.back();
  }
}
