import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationView extends StatelessWidget {
  const DestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset(
              "assets/images/view1.png",
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
            child: Row(
              children: [
                Container(
                  height: 44,
                  width: 44,
                  margin: const EdgeInsets.only(right: 120),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(27, 30, 40, 0.3),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "View",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            child: Container(
              width: screenWidth * 0.45,
              height: screenHeight * 0.09,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
                color: Color.fromRGBO(62, 62, 62, 0.7),
              ),
              child: Row(
                children: [
                  Container(
                    width: screenWidth * 0.154,
                    height: screenHeight * 0.072,
                    margin: const EdgeInsets.only(left: 8, right: 12),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Image.asset(
                      "assets/images/viewFloat1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "La-Hotel",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.039,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Text(
                        "2.09 mi",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            left: 20,
            child: Container(
              width: screenWidth * 0.45,
              height: screenHeight * 0.09,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
                color: Color.fromRGBO(62, 62, 62, 0.7),
              ),
              child: Row(
                children: [
                  Container(
                    width: screenWidth * 0.154,
                    height: screenHeight * 0.072,
                    margin: const EdgeInsets.only(left: 8, right: 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Image.asset(
                      "assets/images/viewFloat2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lemon Garden",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.032,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Text(
                        "2.09 mi",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.23,

              /// 204
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              margin: const EdgeInsets.only(
                bottom: 30,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(62, 62, 62, 0.7),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Niladri Reservoir",
                        style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.04, //16
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 211, 54, 1),
                      ),
                      Text(
                        "4.7",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.038,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      Text(
                        "Tekergat, Sunamgnj",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.032, //13
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: AvatarStack(height: 25, width: 25, avatars: [
                          // AssetImage("assets/images/avatar1.png"),
                          // // AssetImage("assets/images/avatar2.png"),
                          // AssetImage("assets/images/avatar3.png"),

                          for (var n = 0; n < 3; n++)
                            NetworkImage('assets/images/avatar$n.png'),
                        ]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.watch_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        " 45 Minutes",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.032, //13
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: screenHeight * 0.064,
                    width: screenWidth,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(13, 110, 253, 1),
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      "See on The Map",
                      style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
