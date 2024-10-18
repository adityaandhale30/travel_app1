import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class CalenderCustom extends StatelessWidget {
  const CalenderCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      timeLineProps: const EasyTimeLineProps(hPadding: 30),
      dayProps: const EasyDayProps(height: 80),
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
      ),
      initialDate: DateTime.now(),
      itemBuilder:
          (context, dayNumber, dayName, monthName, fullDate, isSelected) {
        return Container(
          height: 50,
          width: 44,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.blue
                : Colors.grey[200], // Change color if selected
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                dayName[0], // e.g., Mon, Tue
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                dayNumber,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
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
