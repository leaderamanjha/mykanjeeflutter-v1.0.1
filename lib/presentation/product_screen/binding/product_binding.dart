import '../controller/product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductScreen.
///
/// This class ensures that the ProductController is created when the
/// ProductScreen is first loaded.
class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
