import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';

class SelectedTab extends StatelessWidget {
  final String text;
  final Function() onPress;
  const SelectedTab({required this.text, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
            height: 35,
            width: 80,
            decoration: BoxDecoration(
                color: AppColors.greenColor,
                borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Center(
                  child: Text(
                text,
                style: Styles.sixteenW5BlueText,
              )),
            )));
  }
}
