class Todos {
  int? code;
  List<Tmessage>? message;
  bool? status;

  Todos({this.code, this.message, this.status});

  Todos.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['message'] != null) {
      message = <Tmessage>[];
      json['message'].forEach((v) {
        message!.add(Tmessage.fromJson(v));
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

class Tmessage {
  int? id;
  int? userid;
  String? title;
  String? icon;
  String? startTime;
  String? endTime;
  int? minutes;
  int? progress;
  int? isforce;
  String? createdAt;
  String? updateAt;

  Tmessage(
      {this.id,
      this.userid,
      this.title,
      this.icon,
      this.startTime,
      this.endTime,
      this.minutes,
      this.progress,
      this.isforce,
      this.createdAt,
      this.updateAt});

  Tmessage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    title = json['title'];
    icon = json['icon'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    minutes = json['minutes'];
    progress = json['progress'];
    isforce = json['isforce'];
    createdAt = json['created_at'];
    updateAt = json['update_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userid'] = userid;
    data['title'] = title;
    data['icon'] = icon;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['minutes'] = minutes;
    data['progress'] = progress;
    data['isforce'] = isforce;
    data['created_at'] = createdAt;
    data['update_at'] = updateAt;
    return data;
  }
}
