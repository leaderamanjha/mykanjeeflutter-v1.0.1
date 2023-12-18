import 'controller/sign_up_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/widgets/custom_elevated_button.dart';
import 'package:mykanjeeflutter/widgets/custom_outlined_button.dart';
import 'package:mykanjeeflutter/widgets/custom_text_form_field.dart';
import 'package:mykanjeeflutter/data/models/registerUser/post_register_user_req.dart';
import 'package:mykanjeeflutter/data/models/registerUser/post_register_user_resp.dart';

class SignUpOneScreen extends GetWidget<SignUpOneController> {
  const SignUpOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLogo,
                      height: 80.adaptSize,
                      width: 80.adaptSize),
                  SizedBox(height: 42.v),
                  Text("lbl_sign_up".tr, style: theme.textTheme.titleLarge),
                  SizedBox(height: 38.v),
                  _buildInputWithLabel(),
                  SizedBox(height: 13.v),
                  _buildInputWithLabel1(),
                  SizedBox(height: 24.v),
                  _buildContinue(),
                  SizedBox(height: 41.v),
                  _buildFrameFourteen(),
                  SizedBox(height: 39.v),
                  _buildSocialButtons1(),
                  SizedBox(height: 41.v),
                  GestureDetector(
                      onTap: () {
                        onTapFrameFourteen();
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("msg_already_have_an".tr,
                                style: CustomTextStyles.bodyLargeSFProBlack900),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text("lbl_login".tr,
                                    style: CustomTextStyles.titleMediumBlue300
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_siddartha".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 41.v),
        contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray);
  }

  /// Section Widget
  Widget _buildInputWithLabel() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      _buildName()
    ]);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_91_98945_65589".tr,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 41.v),
        contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray);
  }

  /// Section Widget
  Widget _buildInputWithLabel1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_phone_number_e_mail".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      _buildEmail()
    ]);
  }

  /// Section Widget
  Widget _buildContinue() {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        buttonStyle: CustomButtonStyles.outlinePrimary,
        onPressed: () {
          register();
        });
  }

  /// Section Widget
  Widget _buildFrameFourteen() {
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
  Widget _buildSocialButtons() {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray);
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
        buttonStyle: CustomButtonStyles.outlinePrimaryTL12);
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
        buttonStyle: CustomButtonStyles.outlinePrimaryTL121);
  }

  /// Section Widget
  Widget _buildSocialButtons1() {
    return Column(children: [
      _buildSocialButtons(),
      SizedBox(height: 12.v),
      _buildSignUpWithFacebook(),
      SizedBox(height: 12.v),
      _buildSignUpWithApple()
    ]);
  }

  /// calls the [https://dull-jade-drill-tutu.cyclic.app/auth/register] API
  ///
  /// It has [PostRegisterUserReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onRegisterSuccess()` function.
  /// If the call fails, the function calls the `_onRegisterError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> register() async {
    PostRegisterUserReq postRegisterUserReq = PostRegisterUserReq(
      name: controller.nameController.text,
      userName: controller.emailController.text,
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

  /// Navigates to the signUpTwoScreen when the action is triggered.
  void _onRegisterSuccess() {
    Get.toNamed(
      AppRoutes.signUpTwoScreen,
    );
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Retry Signup`
  void _onRegisterError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "RegisterFailed",
        middleText: "Retry Signup");
  }

  /// Navigates to the logintwoScreen when the action is triggered.
  onTapFrameFourteen() {
    Get.toNamed(
      AppRoutes.logintwoScreen,
    );
  }
}
