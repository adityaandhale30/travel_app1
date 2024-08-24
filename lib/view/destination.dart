import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Destination extends StatelessWidget {
  const Destination({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: screenWidth,
              height: screenHeight / 1.9,
              child: Image.asset(
                "assets/images/home1.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    margin: const EdgeInsets.only(top: 10, left: 16),
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
                    "Details",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    margin: const EdgeInsets.only(top: 10, right: 16),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(27, 30, 40, 0.3),
                    ),
                    child: const Icon(
                      Icons.bookmark_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              top: 430,
              left: 0,
              right: 0,
              child: Container(
                height: 461,
                width: screenWidth,
                padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Icon(
                        Icons.rectangle_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Niladri Reservoir",
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(27, 30, 40, 1)),
                            ),
                            Text(
                              "Tekergat, Sunamgnj",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color:
                                      const Color.fromRGBO(125, 132, 141, 1)),
                            ),
                          ],
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/images/destination1.png"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Color.fromRGBO(125, 132, 141, 1),
                        ),
                        Text(
                          "Tekergat",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color.fromRGBO(125, 132, 141, 1)),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          "4.7",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color.fromRGBO(27, 30, 40, 1)),
                        ),
                        Text(
                          "(2498)",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color.fromRGBO(125, 132, 141, 1)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        Text(
                          "59/person",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color.fromRGBO(125, 132, 141, 1)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(5, (idx) {
                        return Container(
                          height: 48,
                          width: 48,
                          margin: const EdgeInsets.only(top: 22, bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.yellow,
                          ),
                        );
                      }),
                    ),
                    Text(
                      "About Destination",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: const Color.fromRGBO(27, 30, 40, 1)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday to the Greek ETC... Read More",
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: const Color.fromRGBO(125, 132, 141, 1)),
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
                        "Book Now",
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
      ),
    );
  }
}
