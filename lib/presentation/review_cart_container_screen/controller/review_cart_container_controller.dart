import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/review_cart_container_screen/models/review_cart_container_model.dart';

/// A controller class for the ReviewCartContainerScreen.
///
/// This class manages the state of the ReviewCartContainerScreen, including the
/// current reviewCartContainerModelObj
class ReviewCartContainerController extends GetxController {
  Rx<ReviewCartContainerModel> reviewCartContainerModelObj =
      ReviewCartContainerModel().obs;
}
