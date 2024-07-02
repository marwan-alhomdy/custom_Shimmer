import 'package:flutter/material.dart';

import 'shimmer_container_widget.dart';

class ShimmerRowWidget extends StatelessWidget {
  const ShimmerRowWidget({
    super.key,
    required this.width,
    required this.height,
    required this.padding,
    this.radius = 15,
    required this.paddingElement,
  });
  final double width;
  final double height;
  final double radius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry paddingElement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: Row(
          children: List.generate(
            8,
            (index) => ShimmerContainerWidget(
              height: height,
              width: width,
              radius: radius,
              padding: paddingElement,
            ),
          ),
        ),
      ),
    );
  }
}
