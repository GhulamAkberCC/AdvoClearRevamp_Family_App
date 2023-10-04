import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';

class UnSelectedTab extends StatelessWidget {
  final String text;
  final Function() onTap;
  const UnSelectedTab({required this.text, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        // () {
        //   controller.setSelectedIndex(i);
        //   controller.pageController.animateToPage(i,
        //       duration: const Duration(milliseconds: 300),
        //       curve: Curves.easeInOut);
        // },
        child: Text(
          text,
          // controller.tabsList[i],
          style: Styles.sixteenW5LightWhite,
        ));
  }
}
