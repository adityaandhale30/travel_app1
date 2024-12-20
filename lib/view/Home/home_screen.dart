import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/Home/Widgets/listview_home.dart';
import 'package:travel_app/view/Search/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    

    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, left: 16, right: 18, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: screenWidth * 0.32,
                  height: screenHeight * 0.05,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(22),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * 0.092,
                        height: screenHeight * 0.042,
                        margin: const EdgeInsets.only(left: 3, right: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 234, 223, 1)),
                        child: Image.asset("assets/images/leonardo.png"),
                      ),
                      Text(
                        "Leonardo ",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.039,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: screenWidth * 0.11,
                    height: screenHeight * 0.05,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: const Badge(
                        backgroundColor: Color.fromRGBO(255, 112, 41, 1),
                        alignment: Alignment.topRight,
              
                        child: Icon(Icons.notifications_outlined)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Explore the",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.094,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(46, 50, 62, 1),
              ),
            ),
            Row(
              children: [
                Text("Beautiful",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.094,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    )),
                Text(
                  " world",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.094,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 112, 41, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
                  },
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
              height: 20,
            ),
            const ListViewHome(),
          ],
        ),
      ),
    );
  }
}
