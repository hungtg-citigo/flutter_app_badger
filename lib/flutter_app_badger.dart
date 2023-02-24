import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAppBadger {
  static const MethodChannel _channel =
      const MethodChannel('g123k/flutter_app_badger');

  static Future<void> updateBadgeCount(
      int count, {
        String title = '',
        String description = '',
        String notificationChanel = '',
        String notificationId = '',
      }) {
    return _channel.invokeMethod('updateBadgeCount', {
      "count": count,
      "title": title,
      "description": description,
      "notificationChanel": notificationChanel,
      "notificationId": notificationId,
    });
  }

  static Future<void> removeBadge() {
    return _channel.invokeMethod('removeBadge');
  }

  static Future<bool> isAppBadgeSupported() async {
    bool? appBadgeSupported = await _channel.invokeMethod('isAppBadgeSupported');
    return appBadgeSupported ?? false;
  }
}
