import 'package:mykanjeeflutter/core/app_export.dart';
import 'package:mykanjeeflutter/core/utils/progress_dialog_utils.dart';
import 'package:mykanjeeflutter/data/models/forgotPassword/post_forgot_password_resp.dart';
import 'package:mykanjeeflutter/data/models/forgotPasswordVerify/post_forgot_password_verify_resp.dart';
import 'package:mykanjeeflutter/data/models/loginWithOtp/post_login_with_otp_resp.dart';
import 'package:mykanjeeflutter/data/models/loginWithUserName/post_login_with_user_name_resp.dart';
import 'package:mykanjeeflutter/data/models/registerOtpPost/post_register_otp_post_resp.dart';
import 'package:mykanjeeflutter/data/models/registerUser/post_register_user_resp.dart';
import 'package:mykanjeeflutter/data/models/resetPasswordApi/post_reset_password_api_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://dull-jade-drill-tutu.cyclic.app";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/resetPassword
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/resetPassword' endpoint
  /// with the provided headers and request data
  /// Returns a [PostResetPasswordApiResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostResetPasswordApiResp> resetPasswordApi({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/resetPassword',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostResetPasswordApiResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostResetPasswordApiResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password/verify
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password/verify' endpoint
  /// with the provided headers and request data
  /// Returns a [PostForgotPasswordVerifyResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostForgotPasswordVerifyResp> forgotPasswordVerify({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/forgot-password/verify',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostForgotPasswordVerifyResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostForgotPasswordVerifyResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostForgotPasswordResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostForgotPasswordResp> forgotPassword({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/forgot-password',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostForgotPasswordResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostForgotPasswordResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/loginWithUserName
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/loginWithUserName' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginWithUserNameResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginWithUserNameResp> loginWithUserName({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/loginWithUserName',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginWithUserNameResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginWithUserNameResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/loginWithOtp
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/loginWithOtp' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginWithOtpResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginWithOtpResp> loginWithOtp({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/loginWithOtp',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginWithOtpResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginWithOtpResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/register/otp
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/register/otp' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterOtpPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterOtpPostResp> registerOtpPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/register/otp',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterOtpPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterOtpPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/register
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/register' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterUserResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterUserResp> registerUser({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/register',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterUserResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterUserResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
