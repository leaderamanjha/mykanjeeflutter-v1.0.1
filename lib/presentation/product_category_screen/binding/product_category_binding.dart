import '../controller/product_category_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductCategoryScreen.
///
/// This class ensures that the ProductCategoryController is created when the
/// ProductCategoryScreen is first loaded.
class ProductCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductCategoryController());
  }
}
