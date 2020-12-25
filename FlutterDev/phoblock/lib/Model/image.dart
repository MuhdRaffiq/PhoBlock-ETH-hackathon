import 'package:flutter/foundation.dart';

class ImageFile {
  String imageName;
  String imageType;
  String imageString;

  ImageFile({this.imageName, this.imageType, this.imageString});

  factory ImageFile.fromJson(Map<String, dynamic> json) {
    return ImageFile(
      imageName: json['imageName'],
      imageType: json['imageType'],
      imageString: json['imageString'],
    );
  }

  Map toJson() => {
        'imageName': imageName,
        'imageType': imageType,
        'imageString': imageString,
      };
}