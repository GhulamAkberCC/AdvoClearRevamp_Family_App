import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            Images.backBtn,
            width: 20,
            height: 20,
          )),
    );
  }
}
