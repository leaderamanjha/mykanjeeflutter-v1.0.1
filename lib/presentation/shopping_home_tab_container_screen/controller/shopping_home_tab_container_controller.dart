import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/shopping_home_tab_container_screen/models/shopping_home_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShoppingHomeTabContainerScreen.
///
/// This class manages the state of the ShoppingHomeTabContainerScreen, including the
/// current shoppingHomeTabContainerModelObj
class ShoppingHomeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ShoppingHomeTabContainerModel> shoppingHomeTabContainerModelObj =
      ShoppingHomeTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
