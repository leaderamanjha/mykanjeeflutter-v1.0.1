import 'controller/sign_up_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/core/utils/validation_functions.dart';
import 'package:mykanjeeflutter/widgets/custom_elevated_button.dart';
import 'package:mykanjeeflutter/widgets/custom_icon_button.dart';
import 'package:mykanjeeflutter/widgets/custom_outlined_button.dart';
import 'package:mykanjeeflutter/widgets/custom_text_form_field.dart';
import 'package:mykanjeeflutter/data/models/registerUser/post_register_user_req.dart';
import 'package:mykanjeeflutter/data/models/registerUser/post_register_user_resp.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoScreen extends GetWidget<SignUpTwoController> {
  SignUpTwoScreen({Key? key}) : super(key: key);

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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo,
                              height: 80.adaptSize,
                              width: 80.adaptSize),
                          SizedBox(height: 42.v),
                          Text("lbl_sign_up".tr,
                              style: theme.textTheme.titleLarge),
                          SizedBox(height: 38.v),
                          _buildInputWithLabelPassword(),
                          SizedBox(height: 12.v),
                          _buildInputWithLabelConfirmPassword(),
                          SizedBox(height: 23.v),
                          _buildFrame(),
                          SizedBox(height: 22.v),
                          _buildContinue(),
                          SizedBox(height: 41.v),
                          _buildFrame1(),
                          SizedBox(height: 39.v),
                          _buildSocialButtons()
                        ]))),
            bottomNavigationBar: _buildFrameFourteen()));
  }

  /// Section Widget
  Widget _buildInputWithLabelPassword() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl_opksdgb245w".tr,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPassword,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgEyeOpen,
                  height: 16.adaptSize,
                  width: 16.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 41.v))
    ]);
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Obx(() => CustomTextFormField(
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
        obscureText: controller.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildInputWithLabelConfirmPassword() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_confirm_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      _buildConfirmpassword()
    ]);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      child:
                          CustomImageView(imagePath: ImageConstant.imgCheck))),
              Expanded(
                  child: Container(
                      width: 337.h,
                      margin: EdgeInsets.only(left: 16.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_by_selecting".tr,
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "msg_agree_and_continue".tr,
                                style:
                                    CustomTextStyles.labelLargeSFProBlack900),
                            TextSpan(
                                text: "msg_i_agree_to_my_kanjee".tr,
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "msg_terms_of_service".tr,
                                style: CustomTextStyles.bodySmallBlack900
                                    .copyWith(
                                        decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "lbl_and".tr,
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "msg_payments_terms_of".tr,
                                style: CustomTextStyles.bodySmallBlack900
                                    .copyWith(
                                        decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "msg_and_acknowledge".tr,
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "lbl_privacy_policy".tr,
                                style: CustomTextStyles.bodySmallBlack900
                                    .copyWith(
                                        decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.left)))
            ])));
  }

  /// Section Widget
  Widget _buildContinue() {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        onPressed: () {
          register();
        });
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 10.v),
              child: SizedBox(width: 174.h, child: Divider())),
          Text("lbl_or".tr, style: CustomTextStyles.bodyLargeSFProGray800),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 10.v),
              child: SizedBox(width: 174.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle() {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignUpWithFacebook() {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_sign_up_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL81);
  }

  /// Section Widget
  Widget _buildSignUpWithApple() {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_sign_up_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL82);
  }

  /// Section Widget
  Widget _buildSocialButtons() {
    return Column(children: [
      _buildSignUpWithGoogle(),
      SizedBox(height: 12.v),
      _buildSignUpWithFacebook(),
      SizedBox(height: 12.v),
      _buildSignUpWithApple()
    ]);
  }

  /// Section Widget
  Widget _buildFrameFourteen() {
    return GestureDetector(
        onTap: () {
          onTapFrameFourteen();
        },
        child: Padding(
            padding: EdgeInsets.only(left: 95.h, right: 100.h, bottom: 51.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("msg_already_have_an".tr,
                  style: CustomTextStyles.bodyLargeSFProBlack900),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("lbl_login".tr,
                      style: CustomTextStyles.titleMediumBlue300
                          .copyWith(decoration: TextDecoration.underline)))
            ])));
  }

  /// calls the [https://dull-jade-drill-tutu.cyclic.app/auth/register] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostRegisterUserReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onRegisterSuccess()` function.
  /// If the call fails, the function calls the `_onRegisterError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> register() async {
    if (_formKey.currentState!.validate()) {
      PostRegisterUserReq postRegisterUserReq = PostRegisterUserReq(
        password: controller.passwordController.text,
        confirmPassword: controller.confirmpasswordController.text,
      );
      try {
        await controller.callRegisterUser(
          postRegisterUserReq.toJson(),
        );
        _onRegisterSuccess();
      } on PostRegisterUserResp {
        _onRegisterError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  /// Navigates to the signupotpScreen when the action is triggered.
  void _onRegisterSuccess() {
    Get.toNamed(
      AppRoutes.signupotpScreen,
    );
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Retry Signup`
  void _onRegisterError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Failed",
        middleText: "Retry Signup");
  }

  /// Navigates to the logintwoScreen when the action is triggered.
  onTapFrameFourteen() {
    Get.toNamed(
      AppRoutes.logintwoScreen,
    );
  }
}
