import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/contoller/landing_controller.dart';
import 'package:travel_app/view/persistantBottomNavBarCustom.dart';

class LandingPage1 extends StatefulWidget {
  const LandingPage1({super.key});

  @override
  State<LandingPage1> createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  // variable for pageNumber controller
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            child: Container(
              width: screenWidth,
              height: screenHeight / 2,
              margin: const EdgeInsets.only(bottom: 40),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Image.asset(
                Provider.of<LandingController>(context)
                    .landingList[screenIndex]
                    .imagePath,
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              Provider.of<LandingController>(context, listen: false)
                  .nextLandingPage(screenIndex);
              screenIndex++;
              if (screenIndex == 3) screenIndex = 0;
            },
          ),
          Text(
            Provider.of<LandingController>(context)
                .landingList[screenIndex]
                .headLine1,
            style: GoogleFonts.aclonica(
                fontSize: 26, color: const Color.fromRGBO(27, 30, 40, 1)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Provider.of<LandingController>(context)
                    .landingList[screenIndex]
                    .headLine2,
                style: GoogleFonts.aclonica(
                  fontSize: 26,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                ),
              ),
              Text(
                Provider.of<LandingController>(context)
                    .landingList[screenIndex]
                    .headLine3,
                style: GoogleFonts.aclonica(
                  fontSize: 28,
                  color: const Color.fromRGBO(255, 112, 41, 1),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.145, right: screenWidth * 0.124),
            child: Text(
              Provider.of<LandingController>(context)
                  .landingList[screenIndex]
                  .description,
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.039,
                color: const Color.fromRGBO(125, 132, 141, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Consumer<LandingController>(
            builder: (context, consumer, widget) => Column(
              children: [
                AnimatedSmoothIndicator(
                    effect: const ExpandingDotsEffect(),
                    activeIndex: screenIndex,
                    count: 3),
                GestureDetector(
                  onTap: () {
                    Provider.of<LandingController>(context, listen: false)
                        .nextLandingPage(screenIndex);
                    screenIndex++;
                    if (screenIndex == 3) {
                      screenIndex = 0;

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => PersistantBottomNavBarCustom(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    height: screenHeight * 0.064,
                    width: screenWidth,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(13, 110, 253, 1),
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      Provider.of<LandingController>(context)
                          .landingList[screenIndex]
                          .buttonText,
                      style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
