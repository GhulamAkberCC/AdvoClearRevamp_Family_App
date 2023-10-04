import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FloatActBtn extends StatelessWidget {
  final Function() onPress;
  const FloatActBtn({required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: AppColors.greenColor,
        onPressed: onPress,
        child: SvgPicture.asset("assets/plus.svg"));
  }
}
