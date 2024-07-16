import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';
// ignore_for_file: must_be_immutable

class ImageLoader extends StatelessWidget {
  ///to display a network image
  String? imageUrl;

  /// to display image from local
  String? imagePath;

  ///to display an image from file
  File? file;

  bool isCircleAvatar;

  ///to display an image in bytes
  Uint8List? bytes;
  double? imageHeight;
  double? imageWidth;
  Color? color;
  BoxFit? fit;
  String? placeHolder;
  VoidCallback? onTap;
  double? radius;

  ImageLoader({super.key, this.imageUrl, this.imagePath, this.file, this.isCircleAvatar = false, this.bytes, this.imageHeight, this.imageWidth, this.color, this.fit, this.placeHolder, this.onTap, this.radius});

  @override
  Widget build(BuildContext context) {
    return _buildCircleImage();
  }

  ///build asset image from local
  dynamic _buidAssetImage() {
    return radius != null && isCircleAvatar == true
        ? AssetImage(
            imagePath ?? Managers.images.placeHolder,
          )
        : Image.asset(
            imagePath ?? Managers.images.placeHolder,
            fit: fit,
            height: imageHeight,
            color: color,
          );
  }

  ///build image from url
  _buildNetworkImage() {
    return Image.network(
      imageUrl!,
      fit: fit,
      height: imageHeight,
      color: color,
    );
  }

  ///build image from file
  _buildImageFromFile() {
    return Image.file(
      file!,
      height: imageHeight,
      color: color,
      fit: fit,
    );
  }

  ///build image from memory [bytes]
  _buildMemoryImage() {
    return Image.memory(
      bytes!,
      fit: fit,
      color: color,
      height: imageHeight,
    );
  }

  ///build the image with border radius
  _buildCircleImage() {
    if (radius != null && isCircleAvatar == true) {
      return CircleAvatar(
        radius: radius ?? 0,
        backgroundImage: _buildImageView(),
      );
    } else if (radius != null && isCircleAvatar == false) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 0),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  /// determines the image view to display
  _buildImageView() {
    if (imagePath != null) {
      return _buidAssetImage();
    } else if (imagePath == null && imageUrl != null) {
      return _buildNetworkImage();
    } else if (imageUrl == null && file != null) {
      return _buildImageFromFile();
    } else if (file == null && bytes != null) {
      return _buildMemoryImage();
    } else {
      return _buidAssetImage();
    }
  }
}
