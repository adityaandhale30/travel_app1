import 'package:flutter/material.dart';
import 'package:travel_app/model/landing_model.dart';

class LandingController extends ChangeNotifier {
  int pageIndex = 0;
  List<LandingModel> landingList = lst;

  void nextLandingPage(int idx) {
    pageIndex = idx;
    notifyListeners();
  }
}

List<LandingModel> lst = [
  LandingModel(
      imagePath: "assets/images/landing1.png",
      headLine1: "Life is short and the",
      headLine2: "world is",
      headLine3: " wide",
      description:
          "At Friends tours and travel, we customize reliable and trut worthy educational tours to destinations",
      buttonText: "Get Started"),
  LandingModel(
      imagePath: "assets/images/landing2.png",
      headLine1: "It’s a big world out ",
      headLine2: "there go",
      headLine3: " explore",
      description:
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
      buttonText: "Next"),
  LandingModel(
      imagePath: "assets/images/landing3.png",
      headLine1: "People don’t take trips,",
      headLine2: " trips take",
      headLine3: " people",
      description:
          "At Friends tours and travel, we customize reliable and trut worthy educational tours to destinations",
      buttonText: "Next"),
];
