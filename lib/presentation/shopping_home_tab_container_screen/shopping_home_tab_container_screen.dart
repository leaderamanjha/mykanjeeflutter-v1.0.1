import 'controller/shopping_home_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/review_cart_page/review_cart_page.dart';
import 'package:mykanjeeflutter/presentation/shopping_home_page/shopping_home_page.dart';
import 'package:mykanjeeflutter/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanjeeflutter/widgets/app_bar/appbar_subtitle.dart';
import 'package:mykanjeeflutter/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mykanjeeflutter/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanjeeflutter/widgets/custom_bottom_bar.dart';
import 'package:mykanjeeflutter/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ShoppingHomeTabContainerScreen
    extends GetWidget<ShoppingHomeTabContainerController> {
  const ShoppingHomeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

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
              SizedBox(height: 20.v),
              Container(
                height: 40.v,
                width: 216.h,
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.gray90001,
                  labelStyle: TextStyle(
                    fontSize: 14.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: appTheme.gray90003,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.deepPurple5002,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(8.h),
                    ),
                    border: Border.all(
                      color: appTheme.gray600,
                      width: 1.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 10.v,
                        ),
                        decoration: AppDecoration.outlineGray600.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL8,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.customBorderTL8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCheckmark,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl_shopping".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: CustomOutlinedButton(
                        height: 40.v,
                        width: 108.h,
                        text: "lbl_sell_now".tr,
                        buttonStyle: CustomButtonStyles.outlineGray,
                        buttonTextStyle: CustomTextStyles.titleSmallRoboto,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 612.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    ShoppingHomePage(),
                    ShoppingHomePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLinkedin,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 20.v,
          bottom: 20.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_koramangala".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLock,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Orders:
        return "/";
      case BottomBarEnum.Replies:
        return AppRoutes.reviewCartPage;
      case BottomBarEnum.Cart:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.reviewCartPage:
        return ReviewCartPage();
      default:
        return DefaultWidget();
    }
  }
}
