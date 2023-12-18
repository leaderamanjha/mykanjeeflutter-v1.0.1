import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/forgetpasswordotp_screen/models/forgetpasswordotp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/data/models/forgotPasswordVerify/post_forgot_password_verify_resp.dart';
import 'package:mykanjeeflutter/data/apiClient/api_client.dart';

/// A controller class for the ForgetpasswordotpScreen.
///
/// This class manages the state of the ForgetpasswordotpScreen, including the
/// current forgetpasswordotpModelObj
class ForgetpasswordotpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ForgetpasswordotpModel> forgetpasswordotpModelObj =
      ForgetpasswordotpModel().obs;

  PostForgotPasswordVerifyResp postForgotPasswordVerifyResp =
      PostForgotPasswordVerifyResp();

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  /// Calls the https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password/verify API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callForgotPasswordVerify(Map req) async {
    try {
      postForgotPasswordVerifyResp =
          await Get.find<ApiClient>().forgotPasswordVerify(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleForgotPasswordVerifySuccess();
    } on PostForgotPasswordVerifyResp catch (e) {
      postForgotPasswordVerifyResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleForgotPasswordVerifySuccess() {}
}
