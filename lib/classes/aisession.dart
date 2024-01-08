class Aisession {
  bool? code;
  List<AImessage>? message;
  int? status;

  Aisession({this.code, this.message, this.status});

  Aisession.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['message'] != null) {
      message = <AImessage>[];
      json['message'].forEach((v) {
        message!.add(AImessage.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (message != null) {
      data['message'] = message!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    return data;
  }
}

class AImessage {
  int? id;
  int? userId;
  String? sessionTitle;
  String? userSession;
  String? createdAt;
  String? updateAt;

  AImessage(
      {this.id,
      this.userId,
      this.sessionTitle,
      this.userSession,
      this.createdAt,
      this.updateAt});

  AImessage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    sessionTitle = json['session_title'];
    userSession = json['user_session'];
    createdAt = json['created_at'];
    updateAt = json['update_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['session_title'] = sessionTitle;
    data['user_session'] = userSession;
    data['created_at'] = createdAt;
    data['update_at'] = updateAt;
    return data;
  }
}
