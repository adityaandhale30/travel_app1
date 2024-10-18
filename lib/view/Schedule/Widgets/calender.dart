import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class CalenderCustom extends StatelessWidget {
  const CalenderCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      itemBuilder:
          (context, dayNumber, dayName, monthName, fullDate, isSelected) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.blue
                : Colors.grey[200], // Change color if selected
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            color: Colors.red,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  dayName[0], // e.g., Mon, Tue
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  dayNumber, // e.g., 22
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    //Container(
    //           height: 148,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(24),
    //           ),
    //           child: CalendarWeek(
    //             // monthViewBuilder: (p0) {
    //             //   return Row(
    //             //     children: [Text("${p0.day}")],
    //             //   );
    //             // },
    //             height: 148,
    //             dayShapeBorder: BoxShape.rectangle,
    //             dateStyle: GoogleFonts.poppins(
    //               fontWeight: FontWeight.w500,
    //               fontSize: 16,
    //               color: const Color.fromRGBO(27, 30, 40, 1),
    //             ),
    //             weekendsStyle: GoogleFonts.poppins(
    //               fontWeight: FontWeight.w500,
    //               fontSize: 16,
    //               color: const Color.fromRGBO(27, 30, 40, 1),
    //             ),
    //             dayOfWeek: const ["S", "M", "T", "W", "T", "F", "S"],
    //             todayBackgroundColor: Colors.white,
    //             todayDateStyle: GoogleFonts.poppins(
    //               fontWeight: FontWeight.w500,
    //               fontSize: 16,
    //               color: const Color.fromRGBO(27, 30, 40, 1),
    //             ),
    //             dayOfWeekStyle: GoogleFonts.poppins(
    //               fontWeight: FontWeight.w500,
    //               fontSize: 16,
    //               color: const Color.fromRGBO(27, 30, 40, 1),
    //             ),
    //             monthAlignment: FractionalOffset.topLeft,
    //             marginMonth: const EdgeInsets.only(left: 8, top: 8, bottom: 16),
    //           ),
    //         );
  }
}
