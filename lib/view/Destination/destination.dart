import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/contoller/destination_controller.dart';
import 'package:travel_app/model/destination_model.dart';
import 'package:travel_app/view/Destination/Widgets/details_container.dart';

// ignore: must_be_immutable
class Destination extends StatelessWidget {
  DestinationModel destinationCart;
  Destination({super.key, required this.destinationCart});

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
              child: Hero(
                tag: 0,
                child: Image.asset(
                  destinationCart.destinationImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
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
                  ),
                  Text(
                    "Details",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<DestinationController>(context, listen: false)
                          .destinationSaved(0);
                    },
                    child: Container(
                      height: 44,
                      width: 44,
                      margin: const EdgeInsets.only(top: 10, right: 16),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(27, 30, 40, 0.3),
                      ),
                      child: Consumer(
                        builder: (context, provider, widget) => Icon(
                          destinationCart.isDestinationSaved == false
                              ? Icons.bookmark_border_outlined
                              : Icons.bookmark_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DetailsContainer(destinationCart: destinationCart),
          ],
        ),
      ),
    );
  }
}
