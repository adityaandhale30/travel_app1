import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/contoller/destination_controller.dart';
import 'package:travel_app/view/Destination/destination.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      //  backgroundColor: Colors.black,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: screenWidth * 0.32,
                  height: screenHeight * 0.05,
                  // margin: const EdgeInsets.only(bottom: 20),
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
                        // child: Image.asset("assets/images/account.png"),
                      ),
                      Text(
                        "Leonardo",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.039,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.11,
                  height: screenHeight * 0.05,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: const Icon(Icons.notifications_active_outlined),
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
              height: 10,
            ),
            SizedBox(
              height: screenHeight * 0.432,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Provider.of<DestinationController>(context)
                    .destinationList
                    .length,
                itemBuilder: (context, idx) {
                  return GestureDetector(
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: Destination(
                          destinationCart: Provider.of<DestinationController>(
                                  context,
                                  listen: false)
                              .destinationList[idx],
                        ),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => Destination(
                      //           destinationCart:
                      //               Provider.of<DestinationController>(context)
                      //                   .destinationList[idx],
                      //         )));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.only(top: 16),
                      height: screenHeight * 0.432,
                      width: screenWidth * 0.66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Image.asset(
                                Provider.of<DestinationController>(context)
                                    .destinationList[idx]
                                    .destinationImage,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Provider.of<DestinationController>(context,
                                          listen: false)
                                      .destinationSaved(idx);
                                },
                                child: Container(
                                  height: 34,
                                  width: 34,
                                  margin:
                                      const EdgeInsets.only(top: 10, right: 10),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(27, 30, 40, 0.3),
                                  ),
                                  child: Consumer(
                                    builder: (context, value, child) => Icon(
                                      Provider.of<DestinationController>(
                                                      context)
                                                  .destinationList[idx]
                                                  .isDestinationSaved ==
                                              false
                                          ? Icons.bookmark_border_outlined
                                          : Icons.bookmark_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  Provider.of<DestinationController>(context)
                                      .destinationList[idx]
                                      .destinationName,
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.04,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(27, 30, 40, 1),
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(255, 211, 54, 1),
                                ),
                                Text(
                                  Provider.of<DestinationController>(context)
                                      .destinationList[idx]
                                      .rating
                                      .toString(),
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.038,
                                    color: const Color.fromRGBO(27, 30, 40, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              right: 16,
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "Tekergat, Sunamgnj",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.038,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: AvatarStack(
                                      height: 25,
                                      width: 25,
                                      avatars: [
                                        // AssetImage("assets/images/avatar1.png"),
                                        // // AssetImage("assets/images/avatar2.png"),
                                        // AssetImage("assets/images/avatar3.png"),

                                        for (var n = 0; n < 3; n++)
                                          NetworkImage(
                                              'assets/images/avatar$n.png'),
                                      ]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      //  bottomNavigationBar:  PersistantBottomNavBarCustom(),
    );
  }
}
