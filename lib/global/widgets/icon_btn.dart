import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBtn extends StatelessWidget {
  final String iconPath;
  final Function() onPress;
  const IconBtn({required this.iconPath, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      onPressed: onPress,
      icon: SvgPicture.asset(iconPath),
    );
  }
}
