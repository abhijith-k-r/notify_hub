import 'dart:convert';

import 'package:notify_hub/core/constants/api_constance.dart';
import 'package:notify_hub/core/network/dio_client.dart';
import 'package:notify_hub/features/notification/model/notification_model.dart';

class NotificationApiServices {
  Future<NotificationModel> fetchNotification() async {
    final response = await DioClient.dio.get(ApiConstance.notificationUrl);

    // print('Response status: ${response.statusCode}');
    // print('Response type: ${response.data.runtimeType}');
    // print('Response data: ${response.data}');

    final Map<String, dynamic> jsonData =
        jsonDecode(response.data as String) as Map<String, dynamic>;

    return NotificationModel.fromJson(jsonData);
  }
}
