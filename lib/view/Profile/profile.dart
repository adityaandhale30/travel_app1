import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/Profile/Widgets/profile_buttons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(27, 30, 40, 1)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(
              height: 96,
              width: 96,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 234, 223, 1),
              ),
              child: Image.asset("assets/images/leonardo.png"),
            ),
            Text(
              "Leonardo",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.06,
                color: const Color.fromRGBO(27, 30, 40, 1),
              ),
            ),
            Text(
              "Leonardo@gmail.com",
              style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.045,
                  color: const Color.fromRGBO(125, 132, 141, 1)),
            ),
            Container(
              height: 78,
              margin: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reward Points\n",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        TextSpan(
                          text: "360",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Color.fromRGBO(247, 247, 249, 1),
                    thickness: 3,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Travel Tips\n",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        TextSpan(
                          text: "238",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Color.fromRGBO(247, 247, 249, 1),
                    thickness: 3,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Bucket List\n",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        TextSpan(
                          text: "473",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          const  ProfileButtonCustom(),
          ],
        ),
      ),
    );
  }
}
