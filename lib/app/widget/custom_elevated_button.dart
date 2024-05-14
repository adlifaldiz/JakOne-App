import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:jakone_app/app/helper/const_utils.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  const CustomElevatedButton({super.key, this.onPressed, required this.child, this.borderRadius, this.padding});

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onPressed,
      child: Container(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          gradient: defaultGradientttb,
          borderRadius: borderRadius ?? radiusAllCircle,
          border: const GradientBoxBorder(
            gradient: LinearGradient(colors: [Color(0xFFFFF84B), Color(0xFFFFF84B)]),
            width: 2,
          ),
        ),
        child: child,
      ),
    );
  }
}
