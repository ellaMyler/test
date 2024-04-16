import 'package:flutter/material.dart';
import 'package:sleep_tracker/database.dart';
import 'app_ui.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'notification_maker.dart';


// The main file accesses MainScreen class from app_ui.dart to generate the app.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NotificationService.initNotifications();

  runApp(const SleepTrackerApp());
}

class SleepTrackerApp extends StatelessWidget{
  const SleepTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bedtime Buddy',
      home: MainScreen(),
    );
  }
}





