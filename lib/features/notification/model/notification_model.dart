import 'package:equatable/equatable.dart';

/// Immutable Notification entity representing parsed notification data.
class NotificationModel extends Equatable {
  final String image;
  final String title;
  final String body;
  final String timestamp;

  const NotificationModel({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      image: json['image'] as String? ?? '',
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'body': body,
      'timestamp': timestamp,
    };
  }

  @override
  List<Object?> get props => [image, title, body, timestamp];
}
