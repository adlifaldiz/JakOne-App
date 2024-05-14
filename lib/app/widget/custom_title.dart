import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String imageIcon;
  final VoidCallback? onPressed;
  const CustomTitle({super.key, required this.title, this.subtitle, required this.imageIcon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: primaryYellow, width: 2)),
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(100)),
                    gradient: defaultGradientttb),
                child: Image.asset(
                  imageIcon,
                  height: 24,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, height: 1),
                    ),
                    if (subtitle != null) Text(subtitle!),
                    Container(
                      width: 46,
                      height: 2,
                      decoration: BoxDecoration(gradient: defaultGradient3, borderRadius: radiusAllVerySmall),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8),
        TextButton(onPressed: onPressed, child: Text('View All'))
      ],
    );
  }
}
