import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/product_category_screen/models/product_category_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProductCategoryScreen.
///
/// This class manages the state of the ProductCategoryScreen, including the
/// current productCategoryModelObj
class ProductCategoryController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  Rx<ProductCategoryModel> productCategoryModelObj = ProductCategoryModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    editTextController.dispose();
  }
}
