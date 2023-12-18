import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/presentation/logintwo_screen/models/logintwo_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogintwoScreen.
///
/// This class manages the state of the LogintwoScreen, including the
/// current logintwoModelObj
class LogintwoController extends GetxController {
  TextEditingController emailInputController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogintwoModel> logintwoModelObj = LogintwoModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailInputController.dispose();
    passwordController.dispose();
  }
}
