import '../controller/review_cart_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewCartContainerScreen.
///
/// This class ensures that the ReviewCartContainerController is created when the
/// ReviewCartContainerScreen is first loaded.
class ReviewCartContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewCartContainerController());
  }
}
