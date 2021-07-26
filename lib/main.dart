import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/prayer_times_screen.dart';
import 'shared/cubit/bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 22),
          backwardsCompatibility: false,
          backgroundColor: Color(0xFF28A7D2),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color(0xFF28A7D2),
              statusBarIconBrightness: Brightness.light),
        ),
      ),
      home: PrayerTimesScreen(),
    );
  }
}
