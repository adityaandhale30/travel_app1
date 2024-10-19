import 'package:flutter/material.dart';
import 'package:travel_app/model/destination_model.dart';

class DestinationController extends ChangeNotifier {
  List<DestinationModel> destinationList = dl;

  void destinationSaved(int i) {
    destinationList[i].isDestinationSaved =
        !destinationList[i].isDestinationSaved;
    notifyListeners();
  }
}

List<DestinationModel> dl = [
  DestinationModel(
      destinationImage: "assets/images/home0.png",
      isDestinationSaved: false,
      destinationName: "Niladri Reservoir",
      rating: 4.7,
      charges: 265),
  DestinationModel(
      destinationImage: "assets/images/home2.png",
      isDestinationSaved: false,
      destinationName: "Darma Reservoir",
      rating: 4.3,
      charges: 225),
  DestinationModel(
      destinationImage: "assets/images/home1.png",
      isDestinationSaved: false,
      destinationName: "Darma Reservoir",
      rating: 4.3,
      charges: 225),
];
