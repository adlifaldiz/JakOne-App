import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:jakone_app/app/helper/const_utils.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  const CustomOutlinedButton({super.key, this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: radiusAllCircle,
          border: const GradientBoxBorder(
            gradient: LinearGradient(
              colors: [Color(0xFFFFF84B), Color(0xFFFE5F5F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            width: 2,
          ),
        ),
        child: child,
      ),
    );
  }
}
