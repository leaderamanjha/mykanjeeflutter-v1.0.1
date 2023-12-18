class PostResetPasswordApiResp {
  String? error;

  PostResetPasswordApiResp({this.error});

  PostResetPasswordApiResp.fromJson(Map<String, dynamic> json) {
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (error != null) {
      data['error'] = error;
    }
    return data;
  }
}
