import '../../../core/app_export.dart';
import 'productgrid_item_model.dart';

/// This class defines the variables used in the [shopping_home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ShoppingHomeModel {
  Rx<List<ProductgridItemModel>> productgridItemList = Rx([
    ProductgridItemModel(title: "Sarees".obs, subhead: "225 Products".obs),
    ProductgridItemModel(title: "Skirt".obs, subhead: "105 Products".obs),
    ProductgridItemModel(title: "Chudidhar".obs, subhead: "15 Products".obs),
    ProductgridItemModel(title: "Blouse".obs, subhead: "165 Products".obs)
  ]);
}
