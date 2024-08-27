import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderCustom extends StatelessWidget {
  const CalenderCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
              height: 148,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              child: CalendarWeek(
                // monthViewBuilder: (p0) {
                //   return Row(
                //     children: [Text("${p0.day}")],
                //   );
                // },
                height: 148,
                dayShapeBorder: BoxShape.rectangle,
                dateStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                ),
                weekendsStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                ),
                dayOfWeek: const ["S", "M", "T", "W", "T", "F", "S"],
                todayBackgroundColor: Colors.white,
                todayDateStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                ),
                dayOfWeekStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                ),
                monthAlignment: FractionalOffset.topLeft,
                marginMonth: const EdgeInsets.only(left: 8, top: 8, bottom: 16),
              ),
            );
  }
}