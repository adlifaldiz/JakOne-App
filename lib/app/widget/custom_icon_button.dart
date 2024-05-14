import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final BorderRadius? borderRadius;
  const CustomIconButton({super.key, this.onPressed, required this.child, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            gradient: defaultGradientttb,
            borderRadius: borderRadius ?? radiusAllCircle,
            boxShadow: [BoxShadow(offset: const Offset(0, 3), color: context.theme.colorScheme.shadow.withOpacity(0.4), blurRadius: 4)]),
        child: child,
      ),
    );
  }
}
