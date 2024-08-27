import 'package:flutter/material.dart';

class ProfileButton {
  String buttonname;
  IconData buttonIcon;

  ProfileButton({required this.buttonname, required this.buttonIcon});
}

List<ProfileButton> profileButtonList = [
  ProfileButton(buttonname: "Bookmarked", buttonIcon: Icons.abc),
  ProfileButton(buttonname: "Previous Trips", buttonIcon: Icons.airport_shuttle_sharp),
  ProfileButton(buttonname: "Settings", buttonIcon: Icons.settings),
  ProfileButton(buttonname: "Version", buttonIcon: Icons.monochrome_photos),
];
