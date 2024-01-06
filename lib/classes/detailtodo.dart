class Detailtodo {
  int? code;
  Message? message;
  bool? status;

  Detailtodo({this.code, this.message, this.status});

  Detailtodo.fromJson(Map<String, dynamic> json) {
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
  int? id;
  int? userid;
  String? title;
  String? icon;
  String? startTime;
  String? endTime;
  int? minutes;
  int? progress;
  int? isforce;
  String? date;
  String? createdAt;
  String? updateAt;

  Message(
      {this.id,
      this.userid,
      this.title,
      this.icon,
      this.startTime,
      this.endTime,
      this.minutes,
      this.progress,
      this.isforce,
      this.date,
      this.createdAt,
      this.updateAt});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    title = json['title'];
    icon = json['icon'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    minutes = json['minutes'];
    progress = json['progress'];
    isforce = json['isforce'];
    date = json['date'];
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
    data['date'] = date;
    data['created_at'] = createdAt;
    data['update_at'] = updateAt;
    return data;
  }
}
