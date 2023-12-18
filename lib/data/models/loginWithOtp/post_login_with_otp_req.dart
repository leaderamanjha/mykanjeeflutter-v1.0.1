class PostLoginWithOtpReq {
  String? userName;
  int? otp;

  PostLoginWithOtpReq({this.userName, this.otp});

  PostLoginWithOtpReq.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (userName != null) {
      data['userName'] = userName;
    }
    if (otp != null) {
      data['otp'] = otp;
    }
    return data;
  }
}
