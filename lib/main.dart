import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/app.dart';
import 'injection_container.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  configureDependencies();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),);
}



