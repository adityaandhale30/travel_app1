import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  initState() {
    
  }

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
      body: Center(
        child: Text("Travenor",
            style: GoogleFonts.geologica(
              fontSize: 34,
              color: Colors.white,
            )),
      ),
    );
  }
}
