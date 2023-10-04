import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/global/widgets/back_btn.dart';
import 'package:advo_clear_revamp_family/view/home/widgets/pop_up_menu_btn.dart';
import 'package:flutter/material.dart';

class TextAppBar extends StatelessWidget {
  final String text;
  final Function()? onPress;
  final bool requireDeleteIcon;
  final bool requireNotificationIcon;
  final bool requirePopUpBtn;
  const TextAppBar(
      {required this.text,
      this.onPress,
      this.requireDeleteIcon = false,
      this.requireNotificationIcon = false,
      this.requirePopUpBtn = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const BackBtn(),
        const BackBtn(),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(text, style: Styles.twentyW5WhiteText),
          ),
        ),
        requirePopUpBtn ? const PopUpMenuBtn() : Container()
        // requireDeleteIcon
        //     ? IconButton(
        //         padding: EdgeInsets.zero,
        //         constraints: const BoxConstraints(),
        //         onPressed: onPress,
        //         icon: SvgPicture.asset(Images.delete)
        //         )
        //     : const Text(""),
        // requireNotificationIcon
        //     ? IconBtn(
        //         iconPath: Images.notification,
        //         onPress: () {
        //           Get.to(() => const NotificationView());
        //         })
        //     : const Text("")
      ],
    );
  }
}
