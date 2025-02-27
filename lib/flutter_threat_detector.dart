
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterJailbreakDetection {
  static const MethodChannel _channel =
  MethodChannel('FLUTTER_THREAT_DETECTOR');

  static Future<bool> get jailbroken async {
    bool? jailbroken = await _channel.invokeMethod<bool>('jailbroken');
    return jailbroken ?? true;
  }

  static Future<bool> get developerMode async {
    bool? developerMode = await _channel.invokeMethod<bool>('developerMode');
    return developerMode ?? true;
  }
}
