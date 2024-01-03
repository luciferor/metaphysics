class Logindata {
  int? code;
  Message? message;
  bool? status;

  Logindata({this.code, this.message, this.status});

  Logindata.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message =
        json['message'] != null ? Message.fromJson(json['message']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (message != null) {
      data['message'] = message!.toJson();
    }
    data['status'] = status;
    return data;
  }
}

class Message {
  String? authozation;
  Userinfo? userinfo;

  Message({this.authozation, this.userinfo});

  Message.fromJson(Map<String, dynamic> json) {
    authozation = json['authozation'];
    userinfo =
        json['userinfo'] != null ? Userinfo.fromJson(json['userinfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['authozation'] = authozation;
    if (userinfo != null) {
      data['userinfo'] = userinfo!.toJson();
    }
    return data;
  }
}

class Userinfo {
  int? id;
  String? openId;
  String? email;
  String? password;
  String? nickname;
  String? avator;
  int? gender;
  int? grade;
  int? status;
  int? isdel;
  String? createdAt;
  String? updatedAt;

  Userinfo(
      {this.id,
      this.openId,
      this.email,
      this.password,
      this.nickname,
      this.avator,
      this.gender,
      this.grade,
      this.status,
      this.isdel,
      this.createdAt,
      this.updatedAt});

  Userinfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    openId = json['open_id'];
    email = json['email'];
    password = json['password'];
    // ignore: void_checks
    nickname = json['nickname'];
    // ignore: void_checks
    avator = json['avator'];
    // ignore: void_checks
    gender = json['gender'];
    grade = json['grade'];
    status = json['status'];
    isdel = json['isdel'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['open_id'] = openId;
    data['email'] = email;
    data['password'] = password;
    data['nickname'] = nickname;
    data['avator'] = avator;
    data['gender'] = gender;
    data['grade'] = grade;
    data['status'] = status;
    data['isdel'] = isdel;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
