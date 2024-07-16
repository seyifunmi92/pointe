import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:moniepointmobile/core/managers/fonts_manager/fonts.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';

// ignore: must_be_immutable
class IText extends StatelessWidget {
  String value;
  TextStyle? textStyle;
  double? fontSize;
  FontWeight? fontWeight;
  String? fontFamily;
  double? letterSpacing;
  bool? softWrap;
  TextOverflow? overflow;
  Color? fontColor;
  TextAlign? align;
  TextDecoration? decoration;
  double? textHeight;

  IText({super.key, required this.value, this.textStyle, this.textHeight, this.fontSize, this.fontWeight, this.fontFamily, this.letterSpacing, this.softWrap, this.overflow, this.fontColor, this.align, this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: textStyle ??
          TextStyle(
            height: textHeight,
            decoration: decoration,
            fontSize: fontSize ?? 10.f,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontFamily: fontFamily ?? IFonts.josefin,
            letterSpacing: letterSpacing,
            color: fontColor ?? context.textprimary,
          ),
      softWrap: softWrap,
      overflow: overflow,
      textAlign: align ?? TextAlign.center,
    );
  }
}
