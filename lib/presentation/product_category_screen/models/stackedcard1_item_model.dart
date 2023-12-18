
import '../../../core/app_export.dart';

/// This class is used in the [stackedcard1_item_widget] screen.
class Stackedcard1ItemModel {
  Stackedcard1ItemModel({
    this.title,
    this.subhead,
    this.id,
  }) {
    title = title ?? Rx("Sarees 3");
    subhead = subhead ?? Rx("₹3,500");
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? subhead;

  Rx<String>? id;
}
