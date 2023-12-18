import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/sign_up_one_screen/models/sign_up_one_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/data/models/registerUser/post_register_user_resp.dart';
import 'package:mykanjeeflutter/data/apiClient/api_client.dart';

/// A controller class for the SignUpOneScreen.
///
/// This class manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj
class SignUpOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<SignUpOneModel> signUpOneModelObj = SignUpOneModel().obs;

  PostRegisterUserResp postRegisterUserResp = PostRegisterUserResp();

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
  }

  /// Calls the https://dull-jade-drill-tutu.cyclic.app/auth/register API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callRegisterUser(Map req) async {
    try {
      postRegisterUserResp = await Get.find<ApiClient>().registerUser(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleRegisterUserSuccess();
    } on PostRegisterUserResp catch (e) {
      postRegisterUserResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleRegisterUserSuccess() {}
}
