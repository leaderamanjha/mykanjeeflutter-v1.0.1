import '../../../core/app_export.dart';
import 'stackedcard_item_model.dart';
import 'stackedcard1_item_model.dart';

/// This class defines the variables used in the [product_category_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductCategoryModel {
  Rx<List<StackedcardItemModel>> stackedcardItemList = Rx([
    StackedcardItemModel(
        titleText: "Zari Pure Silk \nPaithani Saree".obs,
        priceText: "₹3,500".obs),
    StackedcardItemModel(titleText: "Sarees 2".obs, priceText: "₹3,500".obs)
  ]);

  Rx<List<Stackedcard1ItemModel>> stackedcard1ItemList = Rx([
    Stackedcard1ItemModel(title: "Sarees 3".obs, subhead: "₹3,500".obs),
    Stackedcard1ItemModel(title: "Sarees 4".obs, subhead: "₹3,500".obs)
  ]);
}
