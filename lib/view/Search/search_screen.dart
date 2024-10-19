import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/Search/Widgets/GridviewCustom.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        title: Text(
          "Search",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.045,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          /// Unfocuses the keyboard when Click on Cancel

          TextButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
            },
            child: Text(
              "Cancel",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(13, 110, 253, 1),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              
              onTap: () {
                searchController.text = "";
              },
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search Places",
                hintStyle: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(125, 132, 141, 1),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(125, 132, 141, 1),
                ),
                suffixIcon: const Icon(
                  Icons.mic_outlined,
                  color: Color.fromRGBO(125, 132, 141, 1),
                ),
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              "Search Places",
              style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(27, 30, 40, 1)),
            ),
            const SizedBox(
              height: 10,
            ),
            const SearchGridView(),
          ],
        ),
      ),
    );
  }
}
