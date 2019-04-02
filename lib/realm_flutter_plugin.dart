import 'dart:async';

import 'package:flutter/services.dart';

class RealmFlutterPlugin {
  static const MethodChannel _channel =
      const MethodChannel('realm_flutter_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
