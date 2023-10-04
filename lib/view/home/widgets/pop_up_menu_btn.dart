import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopUpMenuBtn extends StatelessWidget {
  const PopUpMenuBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: PopupMenuButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(Images.popUpBtn),
          onSelected: (value) {
            if (value == 1) {
              // Get.to(() =>
              //     EditContactView(contact: contact));
            }
          },
          itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Contacts",
                      style: Styles.sixteenBlackText,
                    )),
                PopupMenuItem(
                    onTap: () {},
                    child: const Text(
                      "Chat",
                      style: Styles.sixteenBlackText,
                    )),
              ]),
    );
  }
}
