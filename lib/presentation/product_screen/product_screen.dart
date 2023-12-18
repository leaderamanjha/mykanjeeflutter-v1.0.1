import 'controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/widgets/custom_elevated_button.dart';
import 'package:mykanjeeflutter/widgets/custom_outlined_button.dart';

class ProductScreen extends GetWidget<ProductController> {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 412.h,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 850.v,
                        width: 412.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 10.v),
                                  child: SizedBox(
                                      width: 108.h,
                                      child:
                                          Divider(color: appTheme.gray90002)))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  height: 1113.v,
                                  width: 412.h,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 29.v),
                                                decoration:
                                                    AppDecoration.fillGray50,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 410.v),
                                                      _buildProductDetails(),
                                                      SizedBox(height: 8.v),
                                                      _buildProductFeatures(),
                                                      _buildProductSize()
                                                    ]))),
                                        _buildBuildingBlocks(),
                                        _buildProductDescription(),
                                        _buildRelatedProducts(),
                                        _buildProductActions()
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildProductDetails() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 12.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_zari_pure_silk_paithani2".tr,
                            style: CustomTextStyles.titleMediumCabinBlack900),
                        SizedBox(height: 4.v),
                        Text("msg_unused_6_month".tr,
                            style: CustomTextStyles.bodyMediumBlack900),
                        SizedBox(height: 1.v),
                        Text("lbl_3_500".tr,
                            style: CustomTextStyles.titleSmallBlack900)
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 43.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgSend,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 24.h, bottom: 43.v))
            ]));
  }

  /// Section Widget
  Widget _buildProductFeatures() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 129.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_type".tr,
                                      style: theme.textTheme.titleSmall),
                                  Text("lbl_bandhani".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray90003)
                                ])),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_fabric".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 2.v),
                              Text("lbl_pure_silk".tr,
                                  style: CustomTextStyles.bodyMediumGray90003)
                            ])
                      ])),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.only(right: 93.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_print_or_pattern".tr,
                                  style: theme.textTheme.titleSmall),
                              Text("lbl_ethnic_motifs".tr,
                                  style: CustomTextStyles.bodyMediumGray90003)
                            ])),
                    Padding(
                        padding: EdgeInsets.only(left: 71.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_border".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 4.v),
                              Text("lbl_woven_design".tr,
                                  style: CustomTextStyles.bodyMediumGray90003)
                            ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildProductSize() {
    return Container(
        width: 412.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_size_fit".tr, style: theme.textTheme.titleSmall),
              SizedBox(height: 3.v),
              Text("msg_length_5_5m_width".tr,
                  style: CustomTextStyles.bodyMediumGray90003)
            ]));
  }

  /// Section Widget
  Widget _buildBuildingBlocks() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 427.v,
            width: 412.h,
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 427.v,
                      width: 412.h,
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbnail,
                            height: 427.v,
                            width: 412.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                margin: EdgeInsets.only(right: 10.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.h, vertical: 11.v),
                                decoration: AppDecoration.fillDeepPurple
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Text("lbl_1_6".tr,
                                    style: CustomTextStyles
                                        .titleSmallRobotoGray90001)))
                      ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgNavCart,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 20.v, right: 20.h),
                  onTap: () {
                    onTapImgCart();
                  })
            ])));
  }

  /// Section Widget
  Widget _buildProductDescription() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 322.v),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
            decoration: AppDecoration.fillGray50,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 34.v),
                  Text("msg_take_your_design".tr,
                      style: CustomTextStyles.bodyMediumGray90003)
                ])));
  }

  /// Section Widget
  Widget _buildRelatedProducts() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(top: 791.v),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillGray50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 32.v, right: 4.h),
                      child: _buildRecommendedProducts()),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, top: 32.v),
                      child: _buildRecommendedProducts())
                ])));
  }

  /// Section Widget
  Widget _buildProductActions() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(top: 744.v, bottom: 297.v),
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.fillDeeppurple5001,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: CustomOutlinedButton(
                      height: 40.v,
                      text: "lbl_wishlist".tr,
                      margin: EdgeInsets.only(right: 8.h),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 8.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFavoriteOnprimary,
                              height: 18.adaptSize,
                              width: 18.adaptSize)),
                      buttonStyle: CustomButtonStyles.outlineGrayTL8,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallRobotoOnPrimary)),
              Expanded(
                  child: CustomElevatedButton(
                      height: 40.v,
                      text: "lbl_add_to_cart".tr,
                      margin: EdgeInsets.only(left: 8.h),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 8.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCart,
                              height: 18.adaptSize,
                              width: 18.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillOnPrimary,
                      buttonTextStyle: CustomTextStyles.titleSmallRobotoGray50))
            ])));
  }

  /// Common widget
  Widget _buildRecommendedProducts() {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 16.v),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMedia,
                            height: 182.v,
                            width: 186.h),
                        SizedBox(height: 16.v),
                        Text("lbl_sarees_2".tr,
                            style: theme.textTheme.bodyLarge),
                        Text("lbl_105_products".tr,
                            style: theme.textTheme.bodyMedium)
                      ]))
                ]))));
  }

  /// Navigates to the reviewCartContainerScreen when the action is triggered.
  onTapImgCart() {
    Get.toNamed(
      AppRoutes.reviewCartContainerScreen,
    );
  }
}
