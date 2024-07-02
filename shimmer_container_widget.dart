import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainerWidget extends StatelessWidget {
  const ShimmerContainerWidget({
    super.key,
    required this.width,
    required this.height,
    required this.padding,
    this.radius = 15,
  });
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Shimmer.fromColors(
            baseColor: const Color.fromRGBO(244, 244, 244, 1),
            highlightColor: const Color(0xFFEBEBEB),
            child: Container(color: const Color(0xFFEBEBEB)),
          )),
    );
  }
}
