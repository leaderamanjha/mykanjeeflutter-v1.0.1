import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/review_cart_page/models/review_cart_model.dart';

/// A controller class for the ReviewCartPage.
///
/// This class manages the state of the ReviewCartPage, including the
/// current reviewCartModelObj
class ReviewCartController extends GetxController {
  ReviewCartController(this.reviewCartModelObj);

  Rx<ReviewCartModel> reviewCartModelObj;
}
