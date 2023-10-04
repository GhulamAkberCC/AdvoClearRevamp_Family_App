import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/global/widgets/icon_btn.dart';
import 'package:advo_clear_revamp_family/view/home/widgets/pop_up_menu_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerAppBar extends StatelessWidget {
  final Function() onPress1;
  final Function() onPress2;
  const DrawerAppBar(
      {required this.onPress1, required this.onPress2, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtn(iconPath: Images.drawerMenu, onPress: onPress1),
          const Text("Patients", style: Styles.twentyW5WhiteText),
          const PopUpMenuBtn(),
        ],
      ),
    );
  }
}
