import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage {
  Widget asset(
      {required String path,
      double? height,
      double? width,
      Color? color,
      BoxFit? fit = BoxFit.contain}) {
    return SvgPicture.asset(path,
        height: height,
        width: width,
        fit: fit!,
        colorFilter:
            color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),
        semanticsLabel: 'No image');
  }
  }