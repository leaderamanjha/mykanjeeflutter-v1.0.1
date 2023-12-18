import '../controller/shopping_home_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShoppingHomeTabContainerScreen.
///
/// This class ensures that the ShoppingHomeTabContainerController is created when the
/// ShoppingHomeTabContainerScreen is first loaded.
class ShoppingHomeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShoppingHomeTabContainerController());
  }
}
