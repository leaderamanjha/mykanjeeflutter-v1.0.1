import 'controller/resetpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/core/utils/validation_functions.dart';
import 'package:mykanjeeflutter/widgets/custom_elevated_button.dart';
import 'package:mykanjeeflutter/widgets/custom_text_form_field.dart';
import 'package:mykanjeeflutter/data/models/resetPasswordApi/post_reset_password_api_req.dart';
import 'package:mykanjeeflutter/data/models/resetPasswordApi/post_reset_password_api_resp.dart';

// ignore_for_file: must_be_immutable
class ResetpasswordScreen extends GetWidget<ResetpasswordController> {
  ResetpasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                    child: Column(children: [
                      Container(
                          height: 60.v,
                          width: 66.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 10.v),
                          decoration: AppDecoration.outlineBlueA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder30),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              height: 40.v,
                              width: 48.h,
                              alignment: Alignment.center)),
                      SizedBox(height: 40.v),
                      Text("lbl_reset_password".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 40.v),
                      Container(
                          width: 337.h,
                          margin: EdgeInsets.symmetric(horizontal: 25.h),
                          child: Text("msg_if_there_is_an_account".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeSFProBlack900
                                  .copyWith(height: 1.31))),
                      SizedBox(height: 38.v),
                      _buildResetPasswordForm(),
                      SizedBox(height: 40.v),
                      _buildConfirmPasswordForm(),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildResetPasswordButton()));
  }

  /// Section Widget
  Widget _buildResetPasswordForm() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      Obx(() => CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl_opksdgb245w".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPassword,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          suffix: InkWell(
              onTap: () {
                controller.isShowPassword.value =
                    !controller.isShowPassword.value;
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEyeOpen,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 41.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: controller.isShowPassword.value))
    ]);
  }

  /// Section Widget
  Widget _buildConfirmPasswordForm() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_confirm_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      Obx(() => CustomTextFormField(
          controller: controller.confirmpasswordController,
          hintText: "lbl_opksdgb245w".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPassword,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          suffix: InkWell(
              onTap: () {
                controller.isShowPassword1.value =
                    !controller.isShowPassword1.value;
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEyeOpen,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 41.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: controller.isShowPassword1.value))
    ]);
  }

  /// Section Widget
  Widget _buildResetPasswordButton() {
    return CustomElevatedButton(
        text: "lbl_reset_password".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 74.v),
        onPressed: () {
          reset();
        });
  }

  /// calls the [https://dull-jade-drill-tutu.cyclic.app/auth/resetPassword] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostResetPasswordApiReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onResetSuccess()` function.
  /// If the call fails, the function calls the `_onResetError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> reset() async {
    if (_formKey.currentState!.validate()) {
      PostResetPasswordApiReq postResetPasswordApiReq = PostResetPasswordApiReq(
        password: int.tryParse(controller.passwordController.text),
        confirmPassword:
            int.tryParse(controller.confirmpasswordController.text),
      );
      try {
        await controller.callResetPasswordApi(
          postResetPasswordApiReq.toJson(),
        );
        _onResetSuccess();
      } on PostResetPasswordApiResp {
        _onResetError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  /// Navigates to the homeScreen when the action is triggered.
  void _onResetSuccess() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `retry`
  void _onResetError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "failed", middleText: "retry");
  }
}
