class Msgs<T> {
  int? code;
  bool? success;
  List<T>? message;

  Msgs({
    this.code,
    this.message,
    this.success,
  });

  Msgs.fromJson(
      Map<String, dynamic> json, T, Function(dynamic json) fromJsonT) {
    code = json['code'];
    message = json['message'];
    success = json['success'];
  }
}
