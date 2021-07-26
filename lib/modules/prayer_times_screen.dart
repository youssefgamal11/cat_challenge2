import 'package:cat_challenge2/shared/components/components.dart';
import 'package:cat_challenge2/shared/cubit/cubit.dart';
import 'package:cat_challenge2/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrayerTimesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => TimerCubit()
        ..startSw()
        ..changeAppColor(),
      child: BlocConsumer<TimerCubit, TimerStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = TimerCubit.get(context);
          var animatedColor =
          cubit.visibleColor ? Color(0xFF73274D) : Color(0xFF73B6C4);
          return Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 25,
                      ),
                      onPressed: () {})
                ],
                title: Transform(
                    transform: Matrix4.translationValues(50, 0, 0),
                    child: Text('الأحد ٨ ذو الحجة ١٤٤٢ ')),
                leading: IconButton(
                  icon: ImageIcon(
                      AssetImage('assets/icons8-compass-48 (1).png'),
                      size: 25),
                  onPressed: () {},
                ),
              ),
              body: Stack(
                children: [
                  backgroundImage(context),
                  AnimatedContainer(
                    duration: Duration(seconds: 4),
                    curve: Curves.decelerate,
                    decoration: BoxDecoration(
                      gradient:
                      LinearGradient(begin: Alignment.topLeft, colors: [
                        animatedColor.withOpacity(0.2),
                        animatedColor.withOpacity(0.3),
                        animatedColor.withOpacity(0.4),
                        animatedColor.withOpacity(0.6),
                        animatedColor.withOpacity(0.7),
                        animatedColor.withOpacity(0.8),
                        animatedColor.withOpacity(0.9),
                      ]),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      prayersContainer(
                        prayerName: 'الفجر',
                        prayerTime: "03:30",
                        context: context,
                        time: 'AM',
                      ),
                      myDivider(),
                      prayersContainer(
                        prayerName: '   الشروق ',
                        prayerTime: "05:08",
                        context: context,
                        time: 'AM',
                      ),
                      myDivider(),
                      prayersContainer(
                        prayerName: 'الظهر',
                        prayerTime: "12:06",
                        context: context,
                        time: 'PM',
                      ),
                      myDivider(),
                      prayersContainer(
                        prayerName: 'العصر',
                        prayerTime: "03:45",
                        context: context,
                        time: 'PM',
                      ),
                      myDivider(),
                      prayersContainer(
                        prayerName: 'المغرب   ',
                        prayerTime: "07:03",
                        context: context,
                        time: 'PM',
                      ),
                      myDivider(),
                      prayersContainer(
                        prayerName: 'العشاء',
                        prayerTime: "08:23",
                        context: context,
                        time: 'PM',
                      ),
                      myDivider(),
                      timerContainer(
                          context,
                          Center(
                            child: Text(
                              '${cubit.timerDisplay}',
                              style:
                              TextStyle(color: Colors.white, fontSize: 45 , ),
                            ),
                          )),
                      prayersSmallContainer(
                        context: context,
                        prayerName: 'الفجر',
                        prayerTime: "03:31",
                      ),
                      myDivider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '* Islamic centre in Rijeka - Crotia',
                            style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                      myDivider(),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}
