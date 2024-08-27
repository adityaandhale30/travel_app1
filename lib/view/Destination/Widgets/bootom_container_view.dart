import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/destination_model.dart';

// ignore: must_be_immutable
class BottomContainer extends StatelessWidget {
   DestinationModel destinationCart;
  BottomContainer({super.key, required this.destinationCart});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
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
                        destinationCart.destinationName,
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
                        destinationCart.rating.toString(),
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
          );
  }
}