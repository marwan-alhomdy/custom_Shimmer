import 'package:flutter/material.dart';
import 'shimmer_container_widget.dart';

class ShimmerColumnWidget extends StatelessWidget {
  const ShimmerColumnWidget({
    super.key,
    required this.width,
    required this.height,
    this.radius = 15,
    required this.padding,
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
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: List.generate(
            20,
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
