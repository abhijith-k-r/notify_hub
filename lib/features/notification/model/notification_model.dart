// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);


import 'dart:convert';

NotificationModel notificationModelFromJson(String str) =>
    NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) =>
    json.encode(data.toJson());

class NotificationModel {
  final String message;
  final List<Datum> data;
  final bool success;

  NotificationModel({
    required this.message,
    required this.data,
    required this.success,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "success": success,
  };
}

class Datum {
  final String image;
  final String title;
  final String body;
  final String timestamp;

  Datum({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    image: json["image"],
    title: json["title"],
    body: json["body"],
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "body": body,
    "timestamp": timestamp,
  };
}
