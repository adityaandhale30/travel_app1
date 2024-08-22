

class LandingModel {
  String imagePath;
  String headLine1;
  String headLine2;
  String headLine3;
  String? iconPath;
  String description;
  String buttonText;

  LandingModel(
      {required this.imagePath,
      required this.headLine1,
      required this.headLine2,
      required this.headLine3,
       this.iconPath,
      required this.description,
      required this.buttonText});
}
