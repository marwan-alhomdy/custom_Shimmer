import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerTextWidget extends StatelessWidget {
  const ShimmerTextWidget({
    super.key,
    required this.width,
    required this.height,
    required this.padding,
  });
  final double width;
  final double height;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      width: width,
      height: height,
      child: Shimmer.fromColors(
        baseColor: const Color.fromRGBO(244, 244, 244, 1),
        highlightColor: const Color(0xFFEBEBEB),
        child: Container(color: const Color(0xFFEBEBEB)),
      ),
    );
  }
}
