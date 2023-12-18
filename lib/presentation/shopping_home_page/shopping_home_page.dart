import '../shopping_home_page/widgets/productgrid_item_widget.dart';
import 'controller/shopping_home_controller.dart';
import 'models/productgrid_item_model.dart';
import 'models/shopping_home_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ShoppingHomePage extends StatelessWidget {
  ShoppingHomePage({Key? key}) : super(key: key);

  ShoppingHomeController controller =
      Get.put(ShoppingHomeController(ShoppingHomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: 412.h,
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        CustomSearchView(
                            controller: controller.searchController,
                            hintText: "msg_hinted_search_text".tr),
                        SizedBox(height: 16.v),
                        _buildProductGrid(),
                        SizedBox(height: 90.v),
                        SizedBox(
                            width: 108.h,
                            child: Divider(color: appTheme.gray90002))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildProductGrid() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 259.v,
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .shoppingHomeModelObj.value.productgridItemList.value.length,
        itemBuilder: (context, index) {
          ProductgridItemModel model = controller
              .shoppingHomeModelObj.value.productgridItemList.value[index];
          return ProductgridItemWidget(model, onTapStackedCard: () {
            onTapStackedCard();
          });
        }));
  }

  /// Navigates to the productCategoryScreen when the action is triggered.
  onTapStackedCard() {
    Get.toNamed(
      AppRoutes.productCategoryScreen,
    );
  }
}
