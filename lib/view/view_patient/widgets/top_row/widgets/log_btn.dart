import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';

class LogBtn extends StatelessWidget {
  const LogBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 102,
        height: 38,
        decoration: const BoxDecoration(
          color: AppColors.greenColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2.0),
            bottomLeft: Radius.circular(2.0),
          ),
        ),
        child: const Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOG VIA",
              style: Styles.whiteText,
            ),
          ],
        )),
      ),
    );
  }
}
