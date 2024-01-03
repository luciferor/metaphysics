class Userinfos {
  int? code;
  Message? message;
  bool? status;

  Userinfos({this.code, this.message, this.status});

  Userinfos.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message =
        json['message'] != null ? Message.fromJson(json['message']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = code;
    if (message != null) {
      data['message'] = this.message!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Message {
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

  Message(
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

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    openId = json['open_id'];
    email = json['email'];
    password = json['password'];
    nickname = json['nickname'];
    avator = json['avator'];
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
