import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cat_challenge2/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<TimerStates> {
  TimerCubit() : super(TimerInitialState());
  static TimerCubit get(context) => BlocProvider.of(context);

  String timerDisplay = " 00ᴴ : 00ᴹ : 00ˢ ";
  var sWatch = Stopwatch();
  final dur = const Duration(seconds: 1);

  void running() {
    if (sWatch.isRunning) {
      startTimer();
    }
    timerDisplay = sWatch.elapsed.inHours.toString().padLeft(2, "0") +
        "ᴴ:" +
        (sWatch.elapsed.inMinutes % 60).toString().padLeft(2, "0") +
        "ᴹ:" +
        (sWatch.elapsed.inSeconds % 60).toString().padLeft(2, "0")+
        "ˢ";
    emit(TimerRunningState());
  }

  void startTimer() {
    Timer(dur, running);
    emit(TimerStartState());
  }

  void startSw() {
    sWatch.start();
    startTimer();
    emit(TimerPlayState());
  }

  bool visibleColor = true;
  List<Color> colors = [
    Color(0xFF917B9E).withOpacity(0.1),
    Color(0xFF917B9E).withOpacity(0.4),
    Color(0xFF917B9E).withOpacity(0.6),
    Color(0xFF917B9E).withOpacity(0.9),

    Color(0xFFB995AD).withOpacity(0.1),
    Color(0xFFB995AD).withOpacity(0.6),
    Color(0xFFB995AD).withOpacity(0.9),

    Color(0xFF73B6C4).withOpacity(0.1),
    Color(0xFF73B6C4).withOpacity(0.5),
    Color(0xFF73B6C4).withOpacity(0.8)

  ];
  int i = 0 ;

  void changeAppColor() {
    // for (int i = 0; i <= colors.length; i++) {
    //   return colors[i];
    // }
    // Timer.periodic(Duration(milliseconds: 1 ), (timer) => colors[i]. < colors.length ?  );
    Timer.periodic(Duration(seconds: 4 ), (timer) => visibleColor =! visibleColor  );
    emit(changeAppColorState());
  }
}
