import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/contoller/profile_button_list.dart';

class ProfileButtonCustom extends StatelessWidget {
  const ProfileButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    return   Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 32, bottom: 16),
                padding: const EdgeInsets.only(top: 0, left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                child: Column(
                  children: List.generate(4, (idx) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Icon(
                              profileButtonList[idx].buttonIcon,
                              color: const Color.fromRGBO(125, 132, 141, 1),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              profileButtonList[idx].buttonname,
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color.fromRGBO(125, 132, 141, 1),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        const Divider(
                          color: Color.fromRGBO(247, 247, 249, 1),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            );
  }
}

