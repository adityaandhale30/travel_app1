import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/contoller/destination_controller.dart';
import 'package:travel_app/contoller/landing_controller.dart';
import 'package:travel_app/view/profile.dart';
import 'package:travel_app/view/search.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return LandingController();
        }),
        ChangeNotifierProvider(create: (context) {
          return DestinationController();
        })
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Profile(),
      ),
    );
  }
}
