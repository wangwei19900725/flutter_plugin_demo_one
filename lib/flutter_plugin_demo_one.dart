
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginDemoOne {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_demo_one');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
