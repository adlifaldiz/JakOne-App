import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';

class CustomMenuButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget image;
  final double? horizontalPadding;
  final double? spacingBetweenChild;
  final double? rowPerLength;
  final bool useRatio1;
  final String? label;

  const CustomMenuButton({
    super.key,
    this.onPressed,
    required this.image,
    this.horizontalPadding,
    this.spacingBetweenChild,
    this.rowPerLength,
    this.useRatio1 = false,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double totalPadding = (horizontalPadding ?? 0) * 2; // Horizontal padding
    double totalSpacing = (spacingBetweenChild ?? 0) * ((rowPerLength ?? 1) - 1); // Spacing between children
    double totalWidth = screenWidth - totalPadding - totalSpacing;
    double childWidth = totalWidth / (rowPerLength ?? 1);
    double childHeight = childWidth * 1;

    return Bounceable(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            width: childWidth,
            height: useRatio1 ? childHeight : null,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: radiusAllMedium,
              gradient: LinearGradient(
                colors: [
                  primaryOrange.withOpacity(0.3),
                  primaryOrange.withOpacity(0.1),
                  primaryOrange.withOpacity(0.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: const GradientBoxBorder(
                gradient: LinearGradient(
                  colors: [Color(0xFFFFF84B), Color(0xFFFE5F5F)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                width: 2,
              ),
            ),
            child: image,
          ),
          SizedBox(height: 4),
          SizedBox(
            width: childWidth,
            child: Text(
              label ?? '',
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: TextStyle(fontSize: 10, color: context.theme.colorScheme.onSurface, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
