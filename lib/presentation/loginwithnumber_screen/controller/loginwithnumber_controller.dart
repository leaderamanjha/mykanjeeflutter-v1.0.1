import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/loginwithnumber_screen/models/loginwithnumber_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/data/models/loginWithUserName/post_login_with_user_name_resp.dart';
import 'package:mykanjeeflutter/data/apiClient/api_client.dart';

/// A controller class for the LoginwithnumberScreen.
///
/// This class manages the state of the LoginwithnumberScreen, including the
/// current loginwithnumberModelObj
class LoginwithnumberController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<LoginwithnumberModel> loginwithnumberModelObj = LoginwithnumberModel().obs;

  PostLoginWithUserNameResp postLoginWithUserNameResp =
      PostLoginWithUserNameResp();

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }

  /// Calls the https://dull-jade-drill-tutu.cyclic.app/auth/loginWithUserName API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callLoginWithUserName(Map req) async {
    try {
      postLoginWithUserNameResp = await Get.find<ApiClient>().loginWithUserName(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleLoginWithUserNameSuccess();
    } on PostLoginWithUserNameResp catch (e) {
      postLoginWithUserNameResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleLoginWithUserNameSuccess() {}
}
