import 'notification_model.dart';

/// Pre-populated mock data matching Figma mockups for UI verification.
class NotificationMockData {
  const NotificationMockData._();

  static const List<NotificationModel> sampleNotifications = [
    NotificationModel(
      image: 'order_assigned.png',
      title: 'Your order has been assigned',
      body:
          'Your order containg 2 items will be delivered within the prescribed time',
      timestamp: '2023-01-11T11:06:54.754',
    ),
    NotificationModel(
      image: 'order_delivered.png',
      title: 'Order Delivered',
      body:
          'Your order containg 2 items has been delivered. Thanks for ordering!',
      timestamp: '2023-01-10T11:06:54.754',
    ),
    NotificationModel(
      image: 'order_cancelled.png',
      title: 'Order Cancelled',
      body: 'Your order containg 2 items has been cancelled.',
      timestamp: '2023-01-10T11:01:54.754',
    ),
    NotificationModel(
      image: 'promotion_marketplace.png',
      title: "‘Hurry’ Today Mega sale in D-mart",
      body:
          'Buy 1 Get 1 free in all products in combo day grab sale 100% off valid only 3 days',
      timestamp: '2022-12-27T11:16:54.754',
    ),
    NotificationModel(
      image: 'promotion_notify.png',
      title: 'Get up to INR 100/- cashback using googlepay',
      body:
          'Use code Google300 & get cashback up to INR 100/- on Googlepay transaction above INR 300/-',
      timestamp: '2022-12-27T11:11:54.754',
    ),
    NotificationModel(
      image: 'support_personnel.png',
      title: 'Support ticket status',
      body: 'Hello Jhon, your support ticket has been reviewed and resolved.',
      timestamp: '2022-12-27T11:10:54.754',
    ),
  ];
}
