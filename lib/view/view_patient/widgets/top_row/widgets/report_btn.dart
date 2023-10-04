import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ReportBtn extends StatelessWidget {
  const ReportBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.darkRed,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2.0),
              bottomLeft: Radius.circular(2.0),
            )),
            fixedSize: (const Size(102, 38)),
            elevation: 0),
        onPressed: () {
          // Get.to(() => const ReportView());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Images.report),
            const SizedBox(
              width: 4,
            ),
            const Text("Report", style: Styles.whiteText),
          ],
        ));

    // InkWell(
    //   onTap: () {
    //     Get.to(() => const ReportView());
    //   },
    //   child: Container(
    //     width: 98,
    //     height: 38,
    //     decoration: const BoxDecoration(
    //       color: AppColors.darkRed,
    //       borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(2.0),
    //         bottomLeft: Radius.circular(2.0),
    //       ),
    //     ),
    //     child: Center(
    //         child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         SvgPicture.asset(Images.report),
    //         const SizedBox(
    //           width: 8,
    //         ),
    //         const Text(
    //           "REPORT",
    //           style: Styles.whiteText,
    //         ),
    //       ],
    //     )),
    //   ),
    // );
  }
}
