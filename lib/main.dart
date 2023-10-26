import 'package:flutter/material.dart';
import 'package:green_impact/auth/authentificator.dart';
import 'package:green_impact/src/notif.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:green_impact/systemnotif.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  //final notificationService = NotificationService();
  //await notificationService.init();

  // await notificationService.showRepeatingNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Notif(),
    );
  }
}
