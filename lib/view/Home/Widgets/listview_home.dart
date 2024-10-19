import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/contoller/destination_controller.dart';
import 'package:travel_app/view/Destination/destination.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.432,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:
            Provider.of<DestinationController>(context).destinationList.length,
        itemBuilder: (context, idx) {
          return GestureDetector(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: Destination(
                  destinationCart:
                      Provider.of<DestinationController>(context, listen: false)
                          .destinationList[idx],
                ),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.only(top: 16),
              height: screenHeight * 0.432,
              width: screenWidth * 0.66,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Hero(
                        tag: idx,
                        child: Container(
                          height: 295,
                          width: 240,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            Provider.of<DestinationController>(context)
                                .destinationList[idx]
                                .destinationImage,
                            fit: BoxFit.cover,
                          ),
                        ),
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
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(27, 30, 40, 0.3),
                          ),
                          child: Consumer(
                            builder: (context, value, child) => Icon(
                              Provider.of<DestinationController>(context)
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
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
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
                            color: const Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ),
                        const Gap(3),
                        SizedBox(
                          height: 30,
                          width: 59,
                          child: AvatarStack(
                           // settings: ,
                            height: 25, width: 30, avatars: [
                            for (var n = 1; n < 4; n++)
                              AssetImage('assets/images/avatar$n.png'),
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
    );
  }
}
