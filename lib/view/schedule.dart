import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:google_fonts/google_fonts.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        title: Text(
          "Schedule",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(27, 30, 40, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 44,
            width: 44,
            margin: const EdgeInsets.only(right: 16),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 255, 255, 1)),
            child: const Icon(Icons.notifications_active_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          children: [
            Container(
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
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Destination",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.035,
                      color: const Color.fromRGBO(13, 110, 253, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(itemCount: 7,itemBuilder: (context, i) {
                return Container(
                  height: 100,
                  width: screenWidth,
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(180, 188, 201, 0.12),
                          blurRadius: 16,
                          offset: Offset(0, 6))
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        // margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Image.asset(
                          "assets/images/viewFloat1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: Color.fromRGBO(125, 132, 141, 1),
                              ),
                              Text(
                                "26 January 2022",
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.032,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(125, 132, 141, 1),
                                ),
                              ),
                            ],
                          ),
                          Text("Niladri Reservoir",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                              )),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Color.fromRGBO(125, 132, 141, 1),
                              ),
                              Text(
                                "Tekergat, Sunamgnj",
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.032,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(125, 132, 141, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
