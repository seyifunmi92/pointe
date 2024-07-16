class ImageHelper {
  ImageHelper._();

  static ImageHelper instance = ImageHelper._();

  String get png => "assets/images/pngs/";

  String get jpg => "assets/images/jpegs/";

  String get placeHolder => "${png}placeholder.png";

  String get headshot => "${jpg}headshot.jpg";

  String get kitchen => "${jpg}kitchen.jpg";

  String get flower => "${png}flowerinterior.png";

  String get greenroom => "${png}greenroom.png";

  String get livingroom => "${jpg}livingroom.jpg";

  String get map => "${jpg}mapimage.jpg";
}
