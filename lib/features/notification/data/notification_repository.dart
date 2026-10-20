import 'package:notify_hub/features/notification/data/notification_api_services.dart';
import 'package:notify_hub/features/notification/model/notification_model.dart';

class NotificationRepository {
  final NotificationApiServices _apiServices;

  NotificationRepository({required this._apiServices});

  Future<NotificationModel> fetchNotifications() async {
    return _apiServices.fetchNotification();
  }
}
