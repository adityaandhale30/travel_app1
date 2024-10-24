import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/destination_model.dart';
import 'package:travel_app/view/Destination/view_destiantion.dart';
import 'package:travel_app/view/Search/search_screen.dart';

// ignore: must_be_immutable
class DetailsContainer extends StatelessWidget {
  DestinationModel destinationCart;
  DetailsContainer({super.key, required this.destinationCart});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
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
            Center(
              child: Container(
                height: 6,
                width: 36,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(125, 132, 141, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destinationCart.destinationName,
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(27, 30, 40, 1)),
                    ),
                    Text(
                      "Tekergat, Sunamgnj",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: const Color.fromRGBO(125, 132, 141, 1)),
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
                  destinationCart.rating.toString(),
                  style: GoogleFonts.poppins(
                      fontSize: 15, color: const Color.fromRGBO(27, 30, 40, 1)),
                ),
                Text(
                  "(2498)",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color.fromRGBO(125, 132, 141, 1)),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  "${destinationCart.charges}/person",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color.fromRGBO(125, 132, 141, 1)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (idx) {
                return idx != 4
                    ? Container(
                        height: 48,
                        width: 48,
                        margin: const EdgeInsets.only(top: 12, bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset("assets/images/dest$idx.png"),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SearchScreen()));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset("assets/images/dest$idx.png"),
                            ),
                            const Text(
                              "+16",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
              }),
            ),
            Text(
              "About Destination",
              style: GoogleFonts.poppins(
                  fontSize: 20, color: const Color.fromRGBO(27, 30, 40, 1)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday to the Greek ETC... Read More",
              style: GoogleFonts.poppins(
                  fontSize: 13, color: const Color.fromRGBO(125, 132, 141, 1)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DestinationView(
                          destinationCart: destinationCart,
                        )));
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
