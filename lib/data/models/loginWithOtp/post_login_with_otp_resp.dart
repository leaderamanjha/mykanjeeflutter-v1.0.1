class PostLoginWithOtpResp {
  String? token;

  PostLoginWithOtpResp({this.token});

  PostLoginWithOtpResp.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (token != null) {
      data['token'] = token;
    }
    return data;
  }
}
