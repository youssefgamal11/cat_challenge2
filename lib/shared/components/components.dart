import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget backgroundImage(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/salatak.jpg'),
    )),
  );
}

Widget prayersContainer(
    {@required BuildContext context,
    @required String prayerName,
    @required String prayerTime ,
    @required String time
    }) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.only(left: 4, right: 4),
    child: Container(
      color: Colors.black26,
      width: width,
      height: height * 0.065,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('$prayerTime ',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Text(
                  time,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 10),
              child: Text('$prayerName',
                  style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w700))),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget myDivider() {
  return SizedBox(
    height: 5,
  );
}

Widget timerContainer(BuildContext context, Widget) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.only(left: 4, right: 4),
    child: Container(
      color: Colors.black26,
      width: width,
      height: height * 0.1,
      child: Widget,
    ),
  );
}


Widget prayersSmallContainer(
    {@required BuildContext context,
      @required String prayerName,
      @required String prayerTime ,
      }) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.only(left: 4, right: 4),
    child: Container(
      color:Color(0xFF28A7D2),
      width: width,
      height: height * 0.04,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('$prayerTime ',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
                Text(
                  'AM',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 10),
              child: Text('$prayerName',
                  style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700))),
            ),
          ],
        ),
      ),
    ),
  );
}