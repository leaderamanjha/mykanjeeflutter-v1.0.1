
import '../../../core/app_export.dart';

/// This class is used in the [stackedcard_item_widget] screen.
class StackedcardItemModel {
  StackedcardItemModel({
    this.titleText,
    this.priceText,
    this.id,
  }) {
    titleText = titleText ?? Rx("Zari Pure Silk \nPaithani Saree");
    priceText = priceText ?? Rx("₹3,500");
    id = id ?? Rx("");
  }

  Rx<String>? titleText;

  Rx<String>? priceText;

  Rx<String>? id;
}
