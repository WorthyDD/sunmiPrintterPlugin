import 'dart:async';

import 'package:flutter/services.dart';

class SunmiPrinter {
  static const MethodChannel _channel =
      const MethodChannel('sunmi_printer');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> printText() async {
    print("wuxi......");
    print(_channel);
    print(_channel.name);
    print(_channel.invokeMethod("getPlatformVersion"));
    final String version = await _channel.invokeMethod('getPlatformVersion');
    print("wuxi;;;; " + version);

    final String text = await _channel.invokeMethod('printText');
    print("wuxi::  -----    " + text);
    return version;
  }
}
