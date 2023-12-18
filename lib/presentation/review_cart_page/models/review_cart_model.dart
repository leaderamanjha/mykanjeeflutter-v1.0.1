import '../../../core/app_export.dart';
import 'listitem_item_model.dart';

/// This class defines the variables used in the [review_cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewCartModel {
  Rx<List<ListitemItemModel>> listitemItemList = Rx([
    ListitemItemModel(
        headline: "Product Name".obs, supportingText: "Price: ₹2,000".obs),
    ListitemItemModel(
        headline: "Product Name".obs, supportingText: "Price: ₹2,000".obs)
  ]);
}
