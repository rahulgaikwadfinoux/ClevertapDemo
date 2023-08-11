import 'package:clevertap_plugin/clevertap_plugin.dart';
import 'package:clevertapdemo/HomePage.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Clevertap/Clevertap_Channel_Functions.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  CleverTapPlugin.setDebugLevel(3);

  ClevertapChannelFunctions.CreateChannelCustom(
      "superappuat", "superappuat", "Super App UAT", 5, true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
