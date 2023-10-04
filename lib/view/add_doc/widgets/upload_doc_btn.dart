import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/app_size.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadDocBtn extends StatelessWidget {
  const UploadDocBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 105,
        width: AppSize.width(context),
        child: DottedBorder(
            color: AppColors.grey300,
            dashPattern: const [5, 5],
            strokeWidth: 1,
            child: Container(
              color: AppColors.darkBlue,
              width: AppSize.width(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Images.addDoc),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Attach / Upload document",
                    style: Styles.grey500Text,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
