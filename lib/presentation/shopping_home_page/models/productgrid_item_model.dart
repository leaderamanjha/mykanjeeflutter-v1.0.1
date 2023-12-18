
import '../../../core/app_export.dart';

/// This class is used in the [productgrid_item_widget] screen.
class ProductgridItemModel {
  ProductgridItemModel({
    this.title,
    this.subhead,
    this.id,
  }) {
    title = title ?? Rx("Sarees");
    subhead = subhead ?? Rx("225 Products");
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? subhead;

  Rx<String>? id;
}
