import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/destination_model.dart';
import 'package:travel_app/view/Destination/Widgets/bootom_container_view.dart';

// ignore: must_be_immutable
class DestinationView extends StatelessWidget {
  DestinationModel destinationCart;
  DestinationView({super.key, required this.destinationCart});

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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
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
          BottomContainer(
            destinationCart: destinationCart,
          )
        ],
      ),
    );
  }
}
