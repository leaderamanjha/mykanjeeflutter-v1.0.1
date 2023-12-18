
import '../../../core/app_export.dart';

/// This class is used in the [twentynine_item_widget] screen.
class TwentynineItemModel {
  TwentynineItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
