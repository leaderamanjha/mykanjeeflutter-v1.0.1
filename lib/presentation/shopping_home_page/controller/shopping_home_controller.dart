import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/shopping_home_page/models/shopping_home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShoppingHomePage.
///
/// This class manages the state of the ShoppingHomePage, including the
/// current shoppingHomeModelObj
class ShoppingHomeController extends GetxController {
  ShoppingHomeController(this.shoppingHomeModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ShoppingHomeModel> shoppingHomeModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
