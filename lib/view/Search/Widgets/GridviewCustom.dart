import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchGridView extends StatelessWidget {
  const SearchGridView({super.key});

  @override
  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
    return  Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 4 / 5.3),
                  itemBuilder: (context, idx) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 124,
                            width: 157,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)),
                            child: Image.asset(
                              "assets/images/grid$idx.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Niladri Reservoir",
                            style: GoogleFonts.poppins(
                              fontSize: screenWidth * 0.037,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              // const Icon(
                              //   Icons.location_pin,
                              //   color: Color.fromRGBO(125, 132, 141, 1),
                              // ),
                              Image.asset("assets/images/location.png"),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Tekergat, Sunamgnj",
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.03,
                                  color: const Color.fromRGBO(125, 132, 141, 1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${idx * 3 + 894}/",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.03,
                                    color:
                                        const Color.fromRGBO(13, 110, 253, 1),
                                  ),
                                ),
                                TextSpan(
                                  text: "person",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.03,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            );
  }
}
