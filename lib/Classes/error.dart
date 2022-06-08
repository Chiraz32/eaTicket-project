import 'dart:convert';

Error errorFromJson(String str) => Error.fromJson(json.decode(str));

String errorToJson(Error data) => json.encode(data.toJson());

class Error {
  Error({
    this.statusCode,
    this.message,
    this.error,
  });

  int? statusCode;
  String? message;
  String? error;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    statusCode: json["statusCode"],
    message: json["message"],
    error: json["error"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "error": error,
  };
}
